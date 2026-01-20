# count.smk specific functions


def getUMIBamFile(project, condition, replicate, type):
    """
    gelper to get the correct BAM file (demultiplexed or not)
    """
    if config["experiments"][project]["demultiplex"]:
        return "results/%s/counts/merged_demultiplex.%s_%s_%s.bam" % (
            project,
            condition,
            replicate,
            type,
        )
    else:
        return "results/experiments/%s/counts/useUMI.%s_%s_%s.bam" % (
            project,
            condition,
            replicate,
            type,
        )


def useUMI(project, type="DNA"):
    """
    helper to check if UMI should be used
    """
    return "UMI" in experiments[project] or f"{type}_UMI" in experiments[project]


def onlyFW(project, type="DNA"):
    """
    helper to check if only forward reads should be used
    """
    return f"{type}_BC_R" not in experiments[project]


def noUMI(project, type="DNA"):
    """
    helper to check if UMI should not be used
    """
    return (
        "UMI" not in experiments[project]
        and f"{type}_UMI" not in experiments[project]
        and f"{type}_BC_R" in experiments[project]
    )


def getRawCounts(project, type):
    """
    Helper to get the correct raw counts file (umi/noUMI or just FW read)
    """
    if useUMI(project, type):
        if onlyFW(project, type):
            return (
                "results/experiments/{project}/counts/onlyFWUMI.{condition}_{replicate}_%s_raw_counts.tsv.gz"
                % type
            )
        else:
            return (
                "results/experiments/{project}/counts/useUMI.{condition}_{replicate}_%s_raw_counts.tsv.gz"
                % type
            )
    elif noUMI(project, type):
        return (
            "results/experiments/{project}/counts/noUMI.{condition}_{replicate}_%s_raw_counts.tsv.gz"
            % type
        )
    elif onlyFW(project, type):
        return (
            "results/experiments/{project}/counts/onlyFW.{condition}_{replicate}_%s_raw_counts.tsv.gz"
            % type
        )
    else:
        raise RuntimeError(
            "Error in getRawCounts: no valid option for %s and %s found"
            % (project, type)
        )


def counts_aggregate_demultiplex_input(project):
    output = []
    conditions = getConditions(project)
    for condition in conditions:
        replicates = getReplicatesOfCondition(project, condition)
        names = expand(
            "{condition}_{replicate}_{type}",
            condition=condition,
            replicate=replicates,
            type=["DNA", "RNA"],
        )
        for name in names:
            with (
                checkpoints.experiment_counts_demultiplex_BAM_umi.get(
                    project=project, name=name
                )
                .output[0]
                .open() as f
            ):
                output += [f.name]
    return output


def counts_getFilterConfig(project, conf, dna_or_rna, command):
    value = config["experiments"][project]["configs"][conf]["filter"][
        "min_%s_counts" % dna_or_rna.lower()
    ]
    filterMap = {"min_counts": "minCounts"}
    if isinstance(value, int):
        return "--%s %d" % (filterMap.get(command, command), value)
    else:
        return "--%s %f" % (filterMap.get(command, command), value)


def counts_getSamplingConfig(project, conf, dna_or_rna, command):
    if useSampling(project, conf, dna_or_rna):
        if dna_or_rna in config["experiments"][project]["configs"][conf]["sampling"]:
            if (
                command
                in config["experiments"][project]["configs"][conf]["sampling"][
                    dna_or_rna
                ]
            ):
                value = config["experiments"][project]["configs"][conf]["sampling"][
                    dna_or_rna
                ][command]
                if isinstance(value, int):
                    return "--%s %d" % (command, value)
                else:
                    return "--%s %f" % (command, value)

    return ""


def getReplicatesOfConditionType(project, condition, rna_or_dna):
    exp = getExperiments(project)

    replicates = getReplicatesOfCondition(project, condition)

    if f"{rna_or_dna}_BC_F" in exp.columns:

        exp_filter = exp[exp.Condition == condition]

        if len(replicates) > 1 and exp_filter[f"{rna_or_dna}_BC_F"].nunique() == 1:
            return [replicates[0]]

    return replicates


def getFinalCounts(project, conf, condition, rna_or_dna, raw_or_assigned):
    output = ""

    replicates = getReplicatesOfConditionType(project, condition, rna_or_dna)
    if len(replicates) > 1:
        replicate = "{replicate}"
    else:
        replicate = replicates[0]

    if raw_or_assigned == "counts":
        if useSampling(project, conf, rna_or_dna):
            output = (
                "results/experiments/{project}/%s/{condition}_%s_%s_final_counts.sampling.{config}.tsv.gz"
                % (raw_or_assigned, replicate, rna_or_dna)
            )

        else:
            output = (
                "results/experiments/{project}/%s/{condition}_%s_%s_final_counts.tsv.gz"
                % (raw_or_assigned, replicate, rna_or_dna)
            )
    else:
        output = (
            "results/experiments/{project}/%s/{condition}_%s_%s_final_counts.config.{config}.tsv.gz"
            % (raw_or_assigned, replicate, rna_or_dna)
        )
    return output


# assigned_counts.smk specific functions


def assignedCounts_getAssignmentSamplingConfig(project, assignment, command):
    if "sampling" in config["experiments"][project]["assignments"][assignment]:
        if (
            command
            in config["experiments"][project]["assignments"][assignment]["sampling"]
        ):
            value = config["experiments"][project]["assignments"][assignment][
                "sampling"
            ][command]
            if isinstance(value, int):
                return "--%s %d" % (command, value)
            else:
                return "--%s %f" % (command, value)

    return ""


# statistic.smk specific functions


# get all barcodes of experiment (rule statistic_BC_in_RNA_DNA)
def getBCinRNADNAStats(wc):
    exp = getExperiments(wc.project)
    output = []
    for index, row in exp.iterrows():
        output += expand(
            "results/experiments/{project}/statistic/counts/{condition}_{replicate}_{countType}_BC_in_RNA_DNA.tsv.gz",
            project=wc.project,
            condition=row["Condition"],
            replicate=row["Replicate"],
            countType=wc.countType,
        )
    return output


def getAssignedCountsStatistic(project, assignment, conf, condition):
    exp = getExperiments(project)
    exp = exp[exp.Condition == condition]
    output = []
    for index, row in exp.iterrows():
        output += [
            "--statistic %s results/experiments/%s/statistic/assigned_counts/%s/%s/%s_%s_merged_assigned_counts.statistic.tsv.gz"
            % (
                str(row["Replicate"]),
                project,
                assignment,
                conf,
                condition,
                str(row["Replicate"]),
            )
        ]
    return output


# get all barcodes of experiment (rule dna_rna_merge_counts_withoutZeros or rule dna_rna_merge_counts_withZeros)
def getMergedCounts(project, raw_or_assigned, condition, conf):
    exp = getExperiments(project)
    exp = exp[exp.Condition == condition]
    files = []
    replicates = []
    for index, row in exp.iterrows():
        files += expand(
            "results/experiments/{project}/{raw_or_assigned}/{condition}_{replicate}.merged.config.{config}.tsv.gz",
            raw_or_assigned=raw_or_assigned,
            project=project,
            condition=condition,
            replicate=row["Replicate"],
            config=conf,
        )
        replicates += [str(row["Replicate"])]
    return [files, replicates]
