######################################
### Everything before assigning BC ###
######################################

### START COUNTING ####


rule experiment_counts_onlyFW_raw_counts:
    """
    Getting the BCs from the reads using fixed length.
    """
    conda:
        getCondaEnv("default.yaml")
    input:
        lambda wc: getFW(
            wc.project, wc.condition, wc.replicate, wc.type, check_trimming=True
        ),
    output:
        "results/experiments/{project}/counts/onlyFW.{condition}.{replicate}.{type}.raw_counts.tsv.gz",
    params:
        bc_length=lambda wc: config["experiments"][wc.project]["bc_length"],
    log:
        temp(
            "results/logs/experiment/counts/onlyFW/onlyFW_raw_counts.{project}.{condition}.{replicate}.{type}.log"
        ),
    shell:
        """
        zcat {input} | \
        awk 'NR%4==2 {{print substr($1,1,{params.bc_length})}}' | \
        sort | \
        gzip -c > {output} 2> {log}
        """
