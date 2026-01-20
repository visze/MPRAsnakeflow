rule experiment_preprocess_trim_reads:
    """
    Getting the BCs from the reads using cutadapt.
    """
    conda:
        getCondaEnv("cutadapt.yaml")
    threads: 1
    input:
        lambda wc: getReads(
            wc.read_type, wc.project, wc.condition, wc.replicate, wc.type
        ),
    output:
        "results/experiments/{project}/fastq/{read_type}.trimmed.{condition}.{replicate}.{type}.fastq.gz",
    params:
        adapter=lambda wc: config["experiments"][wc.project]["adapter"],
    log:
        temp(
            "results/logs/experiment/preprocess/trim_reads.{read_type}.{project}.{condition}.{replicate}.{type}.log"
        ),
    shell:
        """
        zcat {input} | \
        cutadapt --cores {threads} -a {params.adapter} - |
        gzip -c > {output} 2> {log}
        """
