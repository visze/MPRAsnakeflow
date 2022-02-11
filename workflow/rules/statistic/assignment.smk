####################################################
### Merge stats generated by rule assignBarcodes ###
### This are assigned+merged BCs                 ###
####################################################


rule statistic_combine_BC_assignment_stats_helper:
    input:
        stats=lambda wc: expand(
            "results/{{project}}/stats/assigned_counts/{{assignment}}/{{condition}}_{replicate}_{type}_{{sampling}}.statistic.tsv.gz",
            type=["DNA", "RNA"],
            replicate=getReplicatesOfCondition(wc.project, wc.condition),
        ),
    output:
        temp(
            "results/{project}/stats/assigned_counts/{assignment}/helper.{condition}.{sampling}.statistic.tsv.gz"
        ),
    shell:
        """
        set +o pipefail;
        (
            zcat {input.stats[0]} | head -n 1;
            for i in {input.stats}; do
                zcat $i | tail -n +2
            done;
        ) | gzip -c > {output}
        """


rule statistic_combine_BC_assignment_stats:
    input:
        stats=lambda wc: expand(
            "results/{{project}}/stats/assigned_counts/{{assignment}}/helper.{condition}.{{sampling}}.statistic.tsv.gz",
            condition=getConditions(wc.project),
        ),
    output:
        report(
            "results/{project}/stats/statistic_assigned_counts_single_{assignment}_{sampling}.tsv",
            caption="../../report/assigned_counts_beforeMerge.rst",
            category="{project}",
            subcategory="Assignment",
        ),
    shell:
        """
        set +o pipefail;
        (
            zcat {input.stats[0]} | head -n 1;
            for i in {input.stats}; do
                zcat $i | tail -n +2
            done;
        ) > {output}
        """


###################################################
### Merge stats generated by rule dna_rna_merge ###
### This are assigned+merged counts             ###
###################################################


def getAssignedCountsStatistic(project, assignment, config, condition, sampling):
    exp = getExperiments(project)
    exp = exp[exp.Condition == condition]
    output = []
    for index, row in exp.iterrows():
        output += [
            "--statistic %s results/%s/stats/assigned_counts/%s/%s/%s_%s_merged_assigned_counts_%s.statistic.tsv.gz"
            % (
                str(row["Replicate"]),
                project,
                assignment,
                config,
                condition,
                str(row["Replicate"]),
                sampling,
            )
        ]
    return output


rule statistic_combine_stats_dna_rna_merge:
    conda:
        "../../envs/mpraflow_py36.yaml"
    input:
        lambda wc: expand(
            "results/{{project}}/stats/assigned_counts/{{assignment}}/{{config}}/{{condition}}_{replicate}_merged_assigned_counts_{{sampling}}.statistic.tsv.gz",
            replicate=getReplicatesOfCondition(wc.project, wc.condition),
        ),
    output:
        "results/{project}/stats/assigned_counts/{assignment}/{config}/combined/{condition}_merged_assigned_counts_{sampling}.statistic.tsv.gz",
    params:
        cond="{condition}",
        statistic=lambda wc: " ".join(
            getAssignedCountsStatistic(
                wc.project, wc.assignment, wc.config, wc.condition, wc.sampling
            )
        ),
    shell:
        """
        python {SCRIPTS_DIR}/count/merge_statistic_tables.py \
        --condition {params.cond} \
        {params.statistic} \
        --output {output}
        """


rule statistic_combine_stats_dna_rna_merge_all:
    conda:
        "../../envs/mpraflow_py36.yaml"
    input:
        lambda wc: expand(
            "results/{{project}}/stats/assigned_counts/{{assignment}}/{{config}}/combined/{condition}_merged_assigned_counts_{{sampling}}.statistic.tsv.gz",
            condition=getConditions(wc.project),
        ),
    output:
        report(
            "results/{project}/stats/statistic_assigned_counts_merged_{assignment}_{config}_{sampling}.tsv",
            caption="../../report/assigned_counts_afterMerge.rst",
            category="{project}",
            subcategory="Assignment",
        ),
    shell:
        """
        set +o pipefail;
        (
            zcat {input[0]} | head -n 1;
            for i in {input}; do
                zcat $i | tail -n +2
            done
        ) > {output}
        """