.. _Best practice:

=================
Best practice
=================

Here we summarize some best practices for using the workflow, divided by assignment and experiment workflow as well some general help using snakemake.

---------
Snakemake
---------

Helpfull command-line options for snakemake are:


General options
================

- :code:`--cores` or :code:`-j`: specify the number of cores to use for parallel processing. For example, :code:`--cores 4` will use 4 cores.
- :code:`--dry-run` or :code:`-n`: perform a dry run to see which steps will be executed without actually running them. This is useful for checking the workflow and identifying any potential issues before executing it. Becasue MPRAsnakeflow is a very large workflow, use `--dry-run --quiet` to just print a summary of the DAG of jobs.
- :code:`--rerun-incomplete` or :code:`--ri`: Re-run all jobs the output of which is recognized as incomplete.
- :code:`--keep-going` or :code:`-k`: Go on with independent jobs if a job fails during execution. This only applies to runtime failures in job execution, not to errors during workflow parsing or DAG construction.
- :code:`--touch` or :code:`-t`: Touch output files (mark them up to date without really changing them) instead of running their commands. This is used to pretend that the rules were executed, in order to fool future invocations of snakemake. Fails if a file does not yet exist. Note that this will only touch files that would otherwise be recreated by Snakemake (e.g. because their input files are newer). For enforcing a touch, combine this with     :code:`--force`, :code:`--forceall`, or :code:`--forcerun`. Note however that you lose the provenance information when the files have been created in reality. Hence, this should be used only as a last resort.
- :code:`--quiet [{all,host,progress,reason,rules} ...]` or :code:`-q [{all,host,progress,reason,rules} ...]`: Do not output certain information. If used without arguments, do not output any progress or rule information. Defining `all` results in no information being printed at all.
- :code:`--printshellcmds` or :code:`-p`: print the shell commands that will be executed for each step. This can help you understand what the workflow is doing and debug any issues.


Software deployment method
==========================

- :code:`--software-deployment-method {apptainer,conda,env-modules} [{apptainer,conda,env-modules} ...]` or :code:`--sdm {apptainer,conda,env-modules} [{apptainer,conda,env-modules} ...]`: specify the software deployment method to use. For MPRAsnakeflow we support :code:`--sdm conda` using conda environments and :code:`--sdm apptainer conda` using conda environments within a pre-build container.
- :code:`--conda-prefix DIR`: Specify a directory in which the `conda` directories are created. These are used to store conda environments. If not supplied, the value is set to the `.snakemake` directory relative to the invocation directory. If supplied, the :code:`--sdm conda` flag must also be set.
- :code:`--apptainer-prefix DIR` or , :code:`--singularity-prefix DIR`: Specify a directory in which apptainer/singularity images will be stored.If not supplied, the value is set to the `.snakemake` directory relative to the invocation directory. If supplied, the :code:`--sdm apptainer` flag must also be set. The value may be given as a relative path, which will be extrapolated to the invocation directory, or as an absolute path. If not supplied, `APPTAINER_CACHEDIR` is used. In any case, the prefix may contain environment variables which will be properly expanded. Note that if you use remote execution e.g. on a cluster and you have node specific values for this, you should disable assuming shared fs for software-deployment (see :code:`--shared-fs-usage`).
- :code:`--apptainer-args ARGS` or :code:`--singularity-args ARGS`: Pass additional args to apptainer/singularity.


.. _best-practice-assignment-workflow:

-------------------
Assignment workflow
-------------------

The following recommendations help to avoid common issues during barcode-to-design assignment.

Selection of mapping strategy
==============================

- The default mapping strategy (``bbmap``) because we see a general good performance for variant and element designs.
- ``bwa`` is not recommended for variant designs due to dropout of many sequences due to the short edit distance between references. For element designs, ``bwa`` can be used but may not perform better than ``bbmap``.
- ``exact`` mapping is fast but does not tolerate sequencing errors. It can be used for quick testing and for designs with very low complexity (e.g. small variant libraries) but is not recommended for general use. Please see below for best practices when using the ``exact`` mapping strategy.
- For variant designs use ``bbmap`` or ``bwa-additional-filtering``. The latter uses ``bwa`` for initial mapping but applies additional filtering to reduce dropout.


Exact mapping parameter tuning
==============================

- ``exact`` mapping is intentionally strict and does not tolerate sequencing errors.
- Consider lowering ``fraction`` from ``0.7`` to ``0.6`` or even ``0.51``.
- Consider decreasing ``min_support`` (e.g. to ``2``).
- A practical strategy is to define multiple assignment configurations in one config file (e.g. ``default``, ``lowerFraction``) and compare outcomes.


Design and read sequence consistency
====================================

- Use a design sequence that matches the sequenced reads as closely as possible. In general, aim for an exact sequence match between reads and design.
- If adapters are present in the reads, include the same adapters in the design file.
- Avoid adding extra sequence in the design that is not present in the reads.
- If reads contain additional sequence context (e.g. adapters), consider adapter trimming before assignment.


Alignment window (``start`` and ``length``)
===========================================

- The alignment settings ``start`` and ``length`` are mapper-dependent and can be confusing.
- For ``exact`` mapping, MPRAsnakeflow uses only the read subsequence from ``start`` to ``start + length``.
- For ``bbmap`` (default strategy), these values are not used for mapping itself, but they are still relevant for design checking.


Strand specificity and adapter handling
=======================================

- Mappers generally evaluate both orientations.
- If your design contains both sequence directions (`+` and `-`), strand-specific handling can be important to avoid ambiguous assignment.
- If reads already include adapters so that forward and reverse reads can be distinguished, add adapters to the design and set strand specificity to ``false`` where appropriate.
- If reads do not include required adapter sequence and your assay/design setup requires strand-specific disambiguation, trimming or synthetic adapter handling may be needed.




-------------------
Experiment workflow
-------------------
