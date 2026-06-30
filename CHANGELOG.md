# Changelog

## [0.8.0](https://github.com/visze/MPRAsnakeflow/compare/v0.7.2...v0.8.0) (2026-06-30)


### ⚠ BREAKING CHANGES

* **assignment:** cigar filtering for BWA and optional length filter ([#273](https://github.com/visze/MPRAsnakeflow/issues/273))
* renaming output files to use dots instead as undersocres a file separators ([#239](https://github.com/visze/MPRAsnakeflow/issues/239))
* assignment adapter removal by length.  Assignment config, adapter and forward read (now FWD), changed ([#237](https://github.com/visze/MPRAsnakeflow/issues/237))
* restructure folders and conda env import. Renaming of rules. Old SLURM ressoucres have to be updated
* version change because of config changes
* versioned config ([#140](https://github.com/visze/MPRAsnakeflow/issues/140))
* latest development for new release ([#133](https://github.com/visze/MPRAsnakeflow/issues/133))
* outlier removal ([#132](https://github.com/visze/MPRAsnakeflow/issues/132))
* No min max length for bbmap. default mapq is 30. ([#131](https://github.com/visze/MPRAsnakeflow/issues/131))
* supporting only snakemake >=8.24.1 ([#130](https://github.com/visze/MPRAsnakeflow/issues/130))
* igvf outputs ([#129](https://github.com/visze/MPRAsnakeflow/issues/129))

### Features

* 5' and 3' adapter removal option using cutadapt ([#207](https://github.com/visze/MPRAsnakeflow/issues/207)) ([a36c023](https://github.com/visze/MPRAsnakeflow/commit/a36c0239e5015e2868e9fe729758a8d18eb357ad))
* Add assignment_merge thread configuration ([26e68c2](https://github.com/visze/MPRAsnakeflow/commit/26e68c26f315c524cf28692d636127fbf3bdeb2b))
* add label file to count basic configuration ([#147](https://github.com/visze/MPRAsnakeflow/issues/147)) ([3c91a6a](https://github.com/visze/MPRAsnakeflow/commit/3c91a6a5206b8a82da37ff25e28f98df5b5a2fe8))
* add performance tweaks for resource optimization in workflow rules ([#153](https://github.com/visze/MPRAsnakeflow/issues/153)) ([5ed1ef9](https://github.com/visze/MPRAsnakeflow/commit/5ed1ef9fb92acc56c999f26183e5ef0d4caf5be0))
* allowing only FW reads with a UMI ([#152](https://github.com/visze/MPRAsnakeflow/issues/152)) ([56b2254](https://github.com/visze/MPRAsnakeflow/commit/56b225405bba024779edba11a332872b01ac02de))
* assignment adapter removal by length.  Assignment config, adapter and forward read (now FWD), changed ([#237](https://github.com/visze/MPRAsnakeflow/issues/237)) ([521735e](https://github.com/visze/MPRAsnakeflow/commit/521735e9b6911114bb8382fc4e7bac4dcab89b5f))
* **assignment:** cigar filtering for BWA and optional length filter ([#273](https://github.com/visze/MPRAsnakeflow/issues/273)) ([f8d51e0](https://github.com/visze/MPRAsnakeflow/commit/f8d51e03fea764595b1fe991183d3f0da750ca95))
* **Assignment:** Long read support with pbmm2 mapper ([#247](https://github.com/visze/MPRAsnakeflow/issues/247)) ([759453d](https://github.com/visze/MPRAsnakeflow/commit/759453dbd52c85ec2698d2a81f6abbe39db5b606))
* bbmap for mapping ([7c143e3](https://github.com/visze/MPRAsnakeflow/commit/7c143e3dd6d61eb4c5f7e24500bbdce13b906416))
* better assignment BC statistics ([00187e6](https://github.com/visze/MPRAsnakeflow/commit/00187e689b2fad10fd317aa2efbd0214fad14434))
* bwa additional filtering ([#216](https://github.com/visze/MPRAsnakeflow/issues/216)) ([9c81cfd](https://github.com/visze/MPRAsnakeflow/commit/9c81cfd19ef35be4cfc8ef837b192dcc9b5b2ada))
* configurable bwa ([#244](https://github.com/visze/MPRAsnakeflow/issues/244)) ([9550e22](https://github.com/visze/MPRAsnakeflow/commit/9550e223bf66f3aeeef0c249148962b571a2f61b))
* containerization ([c52c0ea](https://github.com/visze/MPRAsnakeflow/commit/c52c0eaa8f412d98c2430aed3e1309fd0b4eb448))
* enhance trimming functionality and update config schema for adapter specifications ([798cebb](https://github.com/visze/MPRAsnakeflow/commit/798cebb8ad24b6d2b38816522fe86072d1b0df04))
* experiment adapter trimming and option to do BC (also UMI if available) selection from end of the read (FWD only) ([#238](https://github.com/visze/MPRAsnakeflow/issues/238)) ([04dd683](https://github.com/visze/MPRAsnakeflow/commit/04dd6831d243bf22508b390b7c1926f744eb4759))
* **experiment:** :rocket: FWD/REV(/UMI) reads can be splitted into n files before merging ([#249](https://github.com/visze/MPRAsnakeflow/issues/249)) ([a41e13e](https://github.com/visze/MPRAsnakeflow/commit/a41e13e9ba21be3b18e3d3ef5d3eb505bfa4e91a))
* **experiment:** :sparkles: NGmerge for paired-end BC reads merging ([#270](https://github.com/visze/MPRAsnakeflow/issues/270)) ([68b5175](https://github.com/visze/MPRAsnakeflow/commit/68b5175b9559e3226eee9c7d47ccf270f8fd2dfb))
* faster design check ([315b402](https://github.com/visze/MPRAsnakeflow/commit/315b402499d92850382d4110e153602020381e8a))
* fastq-join as option for merging reads (assignment workflow) ([#243](https://github.com/visze/MPRAsnakeflow/issues/243)) ([093e288](https://github.com/visze/MPRAsnakeflow/commit/093e288fd9a6f38df2be2f7e25ae18ecba0d3f7a))
* igvf outputs ([#129](https://github.com/visze/MPRAsnakeflow/issues/129)) ([b112d9c](https://github.com/visze/MPRAsnakeflow/commit/b112d9c12216e2c15c38af9ac47612b2dc05d7a5))
* IGVF qc metrics report ([3ec5012](https://github.com/visze/MPRAsnakeflow/commit/3ec5012bec438a65da7e5cb15b1d39bfd6b6b0ec))
* implement adapter trimming functionality in experiment rules ([9fd32ce](https://github.com/visze/MPRAsnakeflow/commit/9fd32cee97dc69217f88f994249ea92ed0dd5b5e))
* latest development for new release ([#133](https://github.com/visze/MPRAsnakeflow/issues/133)) ([bdfc557](https://github.com/visze/MPRAsnakeflow/commit/bdfc557a64cecc19d1d86eead8bdb691a1ff2166))
* one dna or RNA count file across multiple replicates ([#144](https://github.com/visze/MPRAsnakeflow/issues/144)) ([ccbacee](https://github.com/visze/MPRAsnakeflow/commit/ccbacee28bd551f9508e80d4e966188f970ba077))
* outlier removal ([#132](https://github.com/visze/MPRAsnakeflow/issues/132)) ([e08c38a](https://github.com/visze/MPRAsnakeflow/commit/e08c38ade063ece4e946e9ba3e219fba6ac3b9cf))
* QC plots for count data ([a9ee7e4](https://github.com/visze/MPRAsnakeflow/commit/a9ee7e4c95a383f0d828c2d18b23029c032fe4ea))
* QC report ([3732026](https://github.com/visze/MPRAsnakeflow/commit/3732026a78bf6f696b6e64f652c4de7d8f86e28e))
* Quality metric json file (for IGVF) and included within QC report ([981baac](https://github.com/visze/MPRAsnakeflow/commit/981baaca6ac62b46c374aef3c146c80a35940071))
* snakemake 8 compatibility ([cf38ed9](https://github.com/visze/MPRAsnakeflow/commit/cf38ed9de68367d0d1700ccff262e91ad6f1fbc0))
* snakemake 8 ready with workflow profile ([d637e1f](https://github.com/visze/MPRAsnakeflow/commit/d637e1fdbebfca0616d944101898fbf522df9c82))
* strand sensitive option ([#146](https://github.com/visze/MPRAsnakeflow/issues/146)) ([f315aab](https://github.com/visze/MPRAsnakeflow/commit/f315aabd24ebe6f524b9fb3b008f5af96987775d))
* update license ([876c2d7](https://github.com/visze/MPRAsnakeflow/commit/876c2d76fb98f021d67af88b588457039066ae4b))
* version change because of config changes ([fd8430f](https://github.com/visze/MPRAsnakeflow/commit/fd8430ff6c9259d82b38a6c691813c8376203504))
* versioned config ([#140](https://github.com/visze/MPRAsnakeflow/issues/140)) ([9573b66](https://github.com/visze/MPRAsnakeflow/commit/9573b661afb83590b7ac5aedac7b6d3d5e61d8a4))


### Bug Fixes

* A bug fix of BIH logo not appearing in the report. ([5e6b768](https://github.com/visze/MPRAsnakeflow/commit/5e6b768293207b180279f953b341e22a0baf7419))
* Adding Zenodo DOI to Readme ([#231](https://github.com/visze/MPRAsnakeflow/issues/231)) ([a3847a9](https://github.com/visze/MPRAsnakeflow/commit/a3847a9bc074aa4d97322f0213d75a7a22d11450))
* assignment barcode counting ([9584802](https://github.com/visze/MPRAsnakeflow/commit/95848023860f9b43e9c5a2e594c0fb9d3eda4205))
* Assignment design check change the length of the sequence we want to check in the attach_sequence case ([f484d15](https://github.com/visze/MPRAsnakeflow/commit/f484d15401e4f4befe22dd6916795e3a9d10a98a))
* Assignment design check change the length of the sequence we want to check in the attach_sequence case ([f484d15](https://github.com/visze/MPRAsnakeflow/commit/f484d15401e4f4befe22dd6916795e3a9d10a98a))
* **assignment:** :tada: Using mem_mb resoucres for bbmap for snakemake &gt;=9.20.0 compatibility ([8ddd146](https://github.com/visze/MPRAsnakeflow/commit/8ddd1467a3893d7823c5f32ccc7eccf193de83cb))
* batch size issue in sort ([487ba8c](https://github.com/visze/MPRAsnakeflow/commit/487ba8ce059517030fcab3708c3cea40ac210f7e))
* change the length of the sequence we want to check in the attach_sequence case ([#177](https://github.com/visze/MPRAsnakeflow/issues/177)) ([e3db5cf](https://github.com/visze/MPRAsnakeflow/commit/e3db5cf487423126ada0fda5305f42a0b38f25cb))
* channel order has to be correct for newer samtools ([d0ada2b](https://github.com/visze/MPRAsnakeflow/commit/d0ada2b38170015867f6173e217bf057508e97d4))
* channel order has to be correct for newer samtools ([e0cef63](https://github.com/visze/MPRAsnakeflow/commit/e0cef63b28a5930e389fd1b5923acf221c6e0b34))
* correct parameter name in check_version function ([7cd50a5](https://github.com/visze/MPRAsnakeflow/commit/7cd50a52f3eaa8baae4d2d6937219b58c492d8d7))
* corrected qc_report_assoc ([afb0127](https://github.com/visze/MPRAsnakeflow/commit/afb012750bc1c3c39f2348b283c23ff97695f672))
* Detach from anaconda ([#122](https://github.com/visze/MPRAsnakeflow/issues/122)) ([16bcea2](https://github.com/visze/MPRAsnakeflow/commit/16bcea2f04190a5965ad1865cf30f6dd44f1b6a0))
* duplicated rule experiment_counts_noUMI_merge_NGmerge ([defa204](https://github.com/visze/MPRAsnakeflow/commit/defa2042c2215911339f4bde2f5ce9560785af97))
* experiment countplots ([#149](https://github.com/visze/MPRAsnakeflow/issues/149)) ([d2be468](https://github.com/visze/MPRAsnakeflow/commit/d2be46891650ff9aaab61f750a4b3bc3b65e3e88))
* **experiment:** :ambulance: Do not allow _ or . in Condition or Replicate ([b4f3234](https://github.com/visze/MPRAsnakeflow/commit/b4f32343f36230f73df57ed9a9328ab75a2734d7))
* **experiment:** :bug: Fix error in check if trimming is needed ([625c6ea](https://github.com/visze/MPRAsnakeflow/commit/625c6ea741cc8526b03c5f02849fc5fb83b54da1))
* **experiment:** :bug: Fix error in check if trimming is needed ([ffc3724](https://github.com/visze/MPRAsnakeflow/commit/ffc3724a5ea9d323f092fa0404fbce62ab1d5cf0))
* **experiment:** :bug: Fix input of rul experiment_preprocessing_trim_reads ([#267](https://github.com/visze/MPRAsnakeflow/issues/267)) ([47c796d](https://github.com/visze/MPRAsnakeflow/commit/47c796d0c53b26ff4d11d1757bd22b330e5b5567))
* **experiment:** :bug: Missing getReads function for correct trimming ([440e7bd](https://github.com/visze/MPRAsnakeflow/commit/440e7bd653152c0bdaec87f64989fc6276a495a3))
* **experiment:** :bug: Missing getReads function for correct trimming ([eb214eb](https://github.com/visze/MPRAsnakeflow/commit/eb214ebb9246cbfb94ebdac91a235d4b02a026b5))
* **experiment:** :fire: split_numer was used wrongly when multiple experiments where defined ([370411f](https://github.com/visze/MPRAsnakeflow/commit/370411ff981eceb6a487e019712f3baeb823f0c1))
* Fixed the FW, BC and REV in the config file ([ae4aa83](https://github.com/visze/MPRAsnakeflow/commit/ae4aa835fdd3e54d8d1c2f683287464c825bdf9c))
* fixed various small bugs in mapping_bbmap.smk, attachBCToFastQ.py, quality_metrics.py ([#220](https://github.com/visze/MPRAsnakeflow/issues/220)) ([90380be](https://github.com/visze/MPRAsnakeflow/commit/90380be4e3777d34d8ad164e66f5272ebb3d9f86))
* issues in assignment check ([#230](https://github.com/visze/MPRAsnakeflow/issues/230)) ([f25b74f](https://github.com/visze/MPRAsnakeflow/commit/f25b74f488452e6fddcf67975f15e98cfa8b0d15)), closes [#217](https://github.com/visze/MPRAsnakeflow/issues/217) [#221](https://github.com/visze/MPRAsnakeflow/issues/221)
* max 255 read length allowed ([#224](https://github.com/visze/MPRAsnakeflow/issues/224)) ([81029df](https://github.com/visze/MPRAsnakeflow/commit/81029dfc27c7ebfef6de02b84d8b83568727af13)), closes [#205](https://github.com/visze/MPRAsnakeflow/issues/205)
* memory resources for bbmap ([#123](https://github.com/visze/MPRAsnakeflow/issues/123)) ([af93f58](https://github.com/visze/MPRAsnakeflow/commit/af93f588e9387ddf91197f5587d36c3481499b38))
* merge.label.py does not return pseudocounts in barcode file ([#187](https://github.com/visze/MPRAsnakeflow/issues/187)) ([023110a](https://github.com/visze/MPRAsnakeflow/commit/023110a5368704e0efb464dbaef1a1d5fdcf6c86))
* missed config version upgrades ([df5391a](https://github.com/visze/MPRAsnakeflow/commit/df5391aae45086ae592fa462dc7c0c9a83f14da0))
* mpralib environment file ([070da2a](https://github.com/visze/MPRAsnakeflow/commit/070da2a4944d25ecfd7aee7b4cbbfa5cfec92b73))
* MPRanalyze compiler replicate contamination ([#279](https://github.com/visze/MPRAsnakeflow/issues/279)) ([105dd0d](https://github.com/visze/MPRAsnakeflow/commit/105dd0dda8ac0855273d2170ebb5bb065c79f97a))
* paths in assignment quarto ([e830dd5](https://github.com/visze/MPRAsnakeflow/commit/e830dd58adbaca038a3a87144bde76618be93bd2))
* plot per bc counts correlation when replicates are more than 3 ([#145](https://github.com/visze/MPRAsnakeflow/issues/145)) ([22ce4d7](https://github.com/visze/MPRAsnakeflow/commit/22ce4d7294630a913788bcc1dd425455af99b760))
* qc report count typo fix ([#174](https://github.com/visze/MPRAsnakeflow/issues/174)) ([d78d339](https://github.com/visze/MPRAsnakeflow/commit/d78d3391700c092c90742d1e47dc7b65b4d6d808))
* qname (read name) length cannot be longer than 255 characters ([#206](https://github.com/visze/MPRAsnakeflow/issues/206)) ([46fe287](https://github.com/visze/MPRAsnakeflow/commit/46fe287815777ca88a0e08607a205aba0bd7251e))
* removed hard-coded barcode length (20) in hybrid reads (assignment workflow) ([#213](https://github.com/visze/MPRAsnakeflow/issues/213)) ([1d89232](https://github.com/visze/MPRAsnakeflow/commit/1d892329ee25f427206ca1435df7ea7c9185ef9b))
* rename barcoe output header ([635f043](https://github.com/visze/MPRAsnakeflow/commit/635f0431c78d3d5bf9b77a16f6ce26d9ff6c82c2))
* report also barcodes that are lower than the min barcodes. ([90f1b14](https://github.com/visze/MPRAsnakeflow/commit/90f1b14d04737723fa5852c809c44e497b2e2d3b)), closes [#185](https://github.com/visze/MPRAsnakeflow/issues/185)
* revert fix of 0.4.5. Not necessary ([7b50cfc](https://github.com/visze/MPRAsnakeflow/commit/7b50cfc57785bb0af99d66b755ca88a4d028fba1))
* revert v0.4.5. The fix was already implemented within the common.smk file ([7997440](https://github.com/visze/MPRAsnakeflow/commit/799744050b540d96545ac72bc2280e8e37a2b61e))
* set htslib and samtools version to 1.21 ([4e8d480](https://github.com/visze/MPRAsnakeflow/commit/4e8d4804d68b15fb64c93a7b17c1636a17cf6d1d))
* set htslib and samtools version to 1.21 to avoid ncurses lib clashes ([cb59bd4](https://github.com/visze/MPRAsnakeflow/commit/cb59bd435b837b46775b412f883e38c7eec2ff0c))
* snakemake reverted default value handling ([#236](https://github.com/visze/MPRAsnakeflow/issues/236)) ([fa5109b](https://github.com/visze/MPRAsnakeflow/commit/fa5109baacc8252c9f407c9cc54e080ca72e32e4))
* swap activity threshold and all output file paths in qc_report rule ([#172](https://github.com/visze/MPRAsnakeflow/issues/172)) ([ff1b11c](https://github.com/visze/MPRAsnakeflow/commit/ff1b11cc3baf84a0a0c45201d93b36d8f630d42b))
* swapped barcode output files ([bac8b92](https://github.com/visze/MPRAsnakeflow/commit/bac8b92fe540cd20d31a9cdd235309dac188454a))
* swapped barcode output files ([a851ad2](https://github.com/visze/MPRAsnakeflow/commit/a851ad2d74aad0834b853eb7432da10f369f8e21))
* typo in report ([ace8cca](https://github.com/visze/MPRAsnakeflow/commit/ace8ccacb3d7ece04af43c9b0b1dc9c9c087a2c4))
* update configs to 0.4 ([5db0d8c](https://github.com/visze/MPRAsnakeflow/commit/5db0d8cbbcacfbc5003b2a8ebfbfa010e6deacea))
* update configs to 0.4 ([bd79b6b](https://github.com/visze/MPRAsnakeflow/commit/bd79b6b22118749a5eec89ec95815b243318dd25))
* using correct threads ([6dcad7d](https://github.com/visze/MPRAsnakeflow/commit/6dcad7d34173f37d4538644b1ba0d918afd8f149))
* using MPRAlib v0.6.1 ([4f45075](https://github.com/visze/MPRAsnakeflow/commit/4f4507540f84a1133a1440c30175f47367911d58))
* workaround for default values in schema files when using remote exec ([#228](https://github.com/visze/MPRAsnakeflow/issues/228)) ([261bcb3](https://github.com/visze/MPRAsnakeflow/commit/261bcb33b85189cc3f3c8559d4c2514d4741c0c3))


### Documentation

* :memo: Adding example using data GEO:GSE306816 ([5f4595b](https://github.com/visze/MPRAsnakeflow/commit/5f4595b40b2bda04282be5987fcd86a144b71dcf))
* :page_facing_up: Best practice section ([858569a](https://github.com/visze/MPRAsnakeflow/commit/858569a38ae393351cd1aeaf786bcc0b7e11f9bb))
* :page_facing_up: Best practice section ([50a8002](https://github.com/visze/MPRAsnakeflow/commit/50a8002da82c8fa047c1f58152a637cc597ae776))
* add GSE293036 example with correct FASTQ file names ([#269](https://github.com/visze/MPRAsnakeflow/issues/269)) ([ff607b5](https://github.com/visze/MPRAsnakeflow/commit/ff607b5757702fe05c87839c5189dba1ecce05a9))
* Added Zahm and KopliK examples - GSE271608 and GSE307247 ([#275](https://github.com/visze/MPRAsnakeflow/issues/275)) ([bb0292b](https://github.com/visze/MPRAsnakeflow/commit/bb0292ba99f526582510f810779bf1aa493101c3))
* Adding tutorial to documentation ([75e5e82](https://github.com/visze/MPRAsnakeflow/commit/75e5e82d664dbe3f3b9c07c3ef57831424508700))
* assignment qc report explain the table `Counts of barcodes and oligos` ([1e754f1](https://github.com/visze/MPRAsnakeflow/commit/1e754f1d490f53aaa14503ed849ba19e5639d243)), closes [#185](https://github.com/visze/MPRAsnakeflow/issues/185)
* **assignment:** Best practice on linker and linker_length ([cadb9bb](https://github.com/visze/MPRAsnakeflow/commit/cadb9bb6fa67e57b5c153ad7d86d45fa68177106))
* automatic versioning ([7226f8d](https://github.com/visze/MPRAsnakeflow/commit/7226f8d4de3344ff40fad6494f760aba16735087))
* better quickstart ([f040f61](https://github.com/visze/MPRAsnakeflow/commit/f040f61bf174a8fcd66e3a3e9a1e6d9526356677))
* correct link in docs badge ([b7f4cfd](https://github.com/visze/MPRAsnakeflow/commit/b7f4cfd588a7b838edf7b732684c8336bcdf302b))
* document all rules in Snakefile ([befe9a1](https://github.com/visze/MPRAsnakeflow/commit/befe9a1ab6d81e9ce5e689793f5d8419c1d67090))
* documentation update ([fd40828](https://github.com/visze/MPRAsnakeflow/commit/fd40828b645b9867628f89969b26c6e3ddbcc9d9))
* documenting each experiment rule and copy to docs ([edd6808](https://github.com/visze/MPRAsnakeflow/commit/edd6808453b22f5e1217a3a29115f6e96b3da28c))
* enhance documentation (adapter trimming) and workflow descriptions ([#240](https://github.com/visze/MPRAsnakeflow/issues/240)) ([0f556e8](https://github.com/visze/MPRAsnakeflow/commit/0f556e815ca96cd7416f29d5b52e71e7d43779ed))
* enhancing documentation ([994d392](https://github.com/visze/MPRAsnakeflow/commit/994d3923c7c5b1b9f776111b991991284fe9662f))
* fix ([fe36d9e](https://github.com/visze/MPRAsnakeflow/commit/fe36d9e5df8e3e48847faf32c8d0100b35d836d7))
* fix ([fcdaa6a](https://github.com/visze/MPRAsnakeflow/commit/fcdaa6a460e8e02fbb6b12ca95422373a6ee05ae))
* Fixed the link for the QC report in Experiment and Assignment ([#126](https://github.com/visze/MPRAsnakeflow/issues/126)) ([eca51db](https://github.com/visze/MPRAsnakeflow/commit/eca51db69db0ae0ad3c7be8cfd17d95728f08ff1))
* fixing language and typos  using AI ([ba522d9](https://github.com/visze/MPRAsnakeflow/commit/ba522d956b4b98b635383ab8fafb3b9a74b2f776))
* fixing typos ([6c4f52a](https://github.com/visze/MPRAsnakeflow/commit/6c4f52ad4abc6977bbcbfb253423d1093b3ddf84))
* formating qc report ([3bb675e](https://github.com/visze/MPRAsnakeflow/commit/3bb675e22f03829b3365bf79894d88bae932562c))
* formatting ([9dc0f6f](https://github.com/visze/MPRAsnakeflow/commit/9dc0f6f9730cfa63fc425af35d7d8fd045b149c8))
* improved documentation with additional example using ENCODE data ([#208](https://github.com/visze/MPRAsnakeflow/issues/208)) ([3732c9f](https://github.com/visze/MPRAsnakeflow/commit/3732c9f6d5224ebc78c15303ad2acc50026b0078))
* improvements, like QC report ([#125](https://github.com/visze/MPRAsnakeflow/issues/125)) ([2c0e3ff](https://github.com/visze/MPRAsnakeflow/commit/2c0e3ff1c4375c6a4c32677f17864d84a52db73a))
* latest mabaforge ([62b043c](https://github.com/visze/MPRAsnakeflow/commit/62b043c106218e2a1ea47a628c8a8b6f49528f01))
* new publication to documentation ([#282](https://github.com/visze/MPRAsnakeflow/issues/282)) ([82b5e2d](https://github.com/visze/MPRAsnakeflow/commit/82b5e2d6c6242bf0037eda122add02f0a5a4b62a))
* overview page of examples and more examples ([#272](https://github.com/visze/MPRAsnakeflow/issues/272)) ([136d681](https://github.com/visze/MPRAsnakeflow/commit/136d68123cb93a9d8218a08826c12443e933d8a9))
* Potential fix for pull request finding ([a067b86](https://github.com/visze/MPRAsnakeflow/commit/a067b866afad3cab225680184d5d2d57533a73a5))
* Refactor package to contain two utilities instead of three ([450c75a](https://github.com/visze/MPRAsnakeflow/commit/450c75a5c027747b9104c012be98b48a53990d4f))
* remove default channel from environment file ([5e2cf74](https://github.com/visze/MPRAsnakeflow/commit/5e2cf74afe991b21af7c3928160839875055be1c))
* smaller bugfixes ([316b006](https://github.com/visze/MPRAsnakeflow/commit/316b006abbb6721cde59cb8a15e0c059d1ca3024))
* sphix compilation ([803594e](https://github.com/visze/MPRAsnakeflow/commit/803594e063de7d1bfdbf4c3d756ac90e57e989ee))
* Typo correction ([301bb3f](https://github.com/visze/MPRAsnakeflow/commit/301bb3fe297bbd6cf8acc782172d0f4f1e94d02e))
* typo fixes ([5e491a8](https://github.com/visze/MPRAsnakeflow/commit/5e491a84754eee6564e7884a03d5fa3681ce2814))
* typo fixes and build cleanup ([d44e87d](https://github.com/visze/MPRAsnakeflow/commit/d44e87d1e9d7c14089f88e683ac0ecbfb2de4450))
* update citation ([709594f](https://github.com/visze/MPRAsnakeflow/commit/709594fcc9548fa605a8fdfcd6369b15e915dca5))
* update example config ([daf884a](https://github.com/visze/MPRAsnakeflow/commit/daf884a6c75e063272ca3ebcaecba8e9d43aec18))
* Update file paths in assignment.rst ([bc9615c](https://github.com/visze/MPRAsnakeflow/commit/bc9615cd14dac12e135b1282d613218ab76e3dc5))
* updating ([6a60303](https://github.com/visze/MPRAsnakeflow/commit/6a603035e4c5c20627c191d3c212f3de3300c25e))
* updating documentation ([ad8c818](https://github.com/visze/MPRAsnakeflow/commit/ad8c81885f3a755340ddf0414938eb09adcc6aa9))
* use snakemake ([a3d20d8](https://github.com/visze/MPRAsnakeflow/commit/a3d20d80fd276c72f007c19044d772dcd550730e))


### Miscellaneous Chores

* supporting only snakemake &gt;=8.24.1 ([#130](https://github.com/visze/MPRAsnakeflow/issues/130)) ([2d80faf](https://github.com/visze/MPRAsnakeflow/commit/2d80faf226ffaff9d20affefe351d82afa5851b4))


### Code Refactoring

* No min max length for bbmap. default mapq is 30. ([#131](https://github.com/visze/MPRAsnakeflow/issues/131)) ([1e9157b](https://github.com/visze/MPRAsnakeflow/commit/1e9157b4f1b8ad97f5d643f6781dd6c0b45c1893))
* renaming output files to use dots instead as undersocres a file separators ([#239](https://github.com/visze/MPRAsnakeflow/issues/239)) ([0546082](https://github.com/visze/MPRAsnakeflow/commit/0546082a2edca83566dcb2283db61c423533524f))
* restructure folders and conda env import. Renaming of rules. Old SLURM ressoucres have to be updated ([f21cdca](https://github.com/visze/MPRAsnakeflow/commit/f21cdcaf974f98d97a23c2a520a2d6862dd5c333))

## [0.7.2](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.7.1...v0.7.2) (2026-06-30)


### Documentation

* new publication to documentation ([#282](https://github.com/kircherlab/MPRAsnakeflow/issues/282)) ([82b5e2d](https://github.com/kircherlab/MPRAsnakeflow/commit/82b5e2d6c6242bf0037eda122add02f0a5a4b62a))
* update citation ([709594f](https://github.com/kircherlab/MPRAsnakeflow/commit/709594fcc9548fa605a8fdfcd6369b15e915dca5))

## [0.7.1](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.7.0...v0.7.1) (2026-06-18)


### Bug Fixes

* MPRanalyze compiler replicate contamination ([#279](https://github.com/kircherlab/MPRAsnakeflow/issues/279)) ([105dd0d](https://github.com/kircherlab/MPRAsnakeflow/commit/105dd0dda8ac0855273d2170ebb5bb065c79f97a))

## [0.7.0](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.6.5...v0.7.0) (2026-06-03)


### ⚠ BREAKING CHANGES

* **assignment:** cigar filtering for BWA and optional length filter ([#273](https://github.com/kircherlab/MPRAsnakeflow/issues/273))

### Features

* **assignment:** cigar filtering for BWA and optional length filter ([#273](https://github.com/kircherlab/MPRAsnakeflow/issues/273)) ([f8d51e0](https://github.com/kircherlab/MPRAsnakeflow/commit/f8d51e03fea764595b1fe991183d3f0da750ca95))
* **experiment:** :sparkles: NGmerge for paired-end BC reads merging ([#270](https://github.com/kircherlab/MPRAsnakeflow/issues/270)) ([68b5175](https://github.com/kircherlab/MPRAsnakeflow/commit/68b5175b9559e3226eee9c7d47ccf270f8fd2dfb))


### Bug Fixes

* duplicated rule experiment_counts_noUMI_merge_NGmerge ([defa204](https://github.com/kircherlab/MPRAsnakeflow/commit/defa2042c2215911339f4bde2f5ce9560785af97))


### Documentation

* :memo: Adding example using data GEO:GSE306816 ([5f4595b](https://github.com/kircherlab/MPRAsnakeflow/commit/5f4595b40b2bda04282be5987fcd86a144b71dcf))
* add GSE293036 example with correct FASTQ file names ([#269](https://github.com/kircherlab/MPRAsnakeflow/issues/269)) ([ff607b5](https://github.com/kircherlab/MPRAsnakeflow/commit/ff607b5757702fe05c87839c5189dba1ecce05a9))
* Added Zahm and KopliK examples - GSE271608 and GSE307247 ([#275](https://github.com/kircherlab/MPRAsnakeflow/issues/275)) ([bb0292b](https://github.com/kircherlab/MPRAsnakeflow/commit/bb0292ba99f526582510f810779bf1aa493101c3))
* fixing typos ([6c4f52a](https://github.com/kircherlab/MPRAsnakeflow/commit/6c4f52ad4abc6977bbcbfb253423d1093b3ddf84))
* overview page of examples and more examples ([#272](https://github.com/kircherlab/MPRAsnakeflow/issues/272)) ([136d681](https://github.com/kircherlab/MPRAsnakeflow/commit/136d68123cb93a9d8218a08826c12443e933d8a9))
* Potential fix for pull request finding ([a067b86](https://github.com/kircherlab/MPRAsnakeflow/commit/a067b866afad3cab225680184d5d2d57533a73a5))
* sphix compilation ([803594e](https://github.com/kircherlab/MPRAsnakeflow/commit/803594e063de7d1bfdbf4c3d756ac90e57e989ee))
* typo fixes ([5e491a8](https://github.com/kircherlab/MPRAsnakeflow/commit/5e491a84754eee6564e7884a03d5fa3681ce2814))
* typo fixes and build cleanup ([d44e87d](https://github.com/kircherlab/MPRAsnakeflow/commit/d44e87d1e9d7c14089f88e683ac0ecbfb2de4450))
* update example config ([daf884a](https://github.com/kircherlab/MPRAsnakeflow/commit/daf884a6c75e063272ca3ebcaecba8e9d43aec18))

## [0.6.5](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.6.4...v0.6.5) (2026-05-06)


### Bug Fixes

* **experiment:** :bug: Fix input of rul experiment_preprocessing_trim_reads ([#267](https://github.com/kircherlab/MPRAsnakeflow/issues/267)) ([47c796d](https://github.com/kircherlab/MPRAsnakeflow/commit/47c796d0c53b26ff4d11d1757bd22b330e5b5567))

## [0.6.4](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.6.3...v0.6.4) (2026-05-06)


### Bug Fixes

* **experiment:** :bug: Fix error in check if trimming is needed ([625c6ea](https://github.com/kircherlab/MPRAsnakeflow/commit/625c6ea741cc8526b03c5f02849fc5fb83b54da1))

## [0.6.3](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.6.2...v0.6.3) (2026-05-05)


### Bug Fixes

* **assignment:** :tada: Using mem_mb resoucres for bbmap for snakemake &gt;=9.20.0 compatibility ([8ddd146](https://github.com/kircherlab/MPRAsnakeflow/commit/8ddd1467a3893d7823c5f32ccc7eccf193de83cb))

## [0.6.2](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.6.1...v0.6.2) (2026-04-23)


### Bug Fixes

* **experiment:** :ambulance: Do not allow _ or . in Condition or Replicate ([b4f3234](https://github.com/kircherlab/MPRAsnakeflow/commit/b4f32343f36230f73df57ed9a9328ab75a2734d7))
* **experiment:** :fire: split_numer was used wrongly when multiple experiments where defined ([370411f](https://github.com/kircherlab/MPRAsnakeflow/commit/370411ff981eceb6a487e019712f3baeb823f0c1))

## [0.6.1](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.6.0...v0.6.1) (2026-04-22)


### Features

* **Assignment:** Long read support with pbmm2 mapper ([#247](https://github.com/kircherlab/MPRAsnakeflow/issues/247)) ([759453d](https://github.com/kircherlab/MPRAsnakeflow/commit/759453dbd52c85ec2698d2a81f6abbe39db5b606))
* **experiment:** :rocket: FWD/REV(/UMI) reads can be splitted into n files before merging ([#249](https://github.com/kircherlab/MPRAsnakeflow/issues/249)) ([a41e13e](https://github.com/kircherlab/MPRAsnakeflow/commit/a41e13e9ba21be3b18e3d3ef5d3eb505bfa4e91a))


### Bug Fixes

* **experiment:** :bug: Missing getReads function for correct trimming ([440e7bd](https://github.com/kircherlab/MPRAsnakeflow/commit/440e7bd653152c0bdaec87f64989fc6276a495a3))

## [0.6.0](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.5.9...v0.6.0) (2026-02-11)


### ⚠ BREAKING CHANGES

* renaming output files to use dots instead as undersocres a file separators ([#239](https://github.com/kircherlab/MPRAsnakeflow/issues/239))
* assignment adapter removal by length.  Assignment config, adapter and forward read (now FWD), changed ([#237](https://github.com/kircherlab/MPRAsnakeflow/issues/237))

### Features

* assignment adapter removal by length.  Assignment config, adapter and forward read (now FWD), changed ([#237](https://github.com/kircherlab/MPRAsnakeflow/issues/237)) ([521735e](https://github.com/kircherlab/MPRAsnakeflow/commit/521735e9b6911114bb8382fc4e7bac4dcab89b5f))
* configurable bwa ([#244](https://github.com/kircherlab/MPRAsnakeflow/issues/244)) ([9550e22](https://github.com/kircherlab/MPRAsnakeflow/commit/9550e223bf66f3aeeef0c249148962b571a2f61b))
* enhance trimming functionality and update config schema for adapter specifications ([798cebb](https://github.com/kircherlab/MPRAsnakeflow/commit/798cebb8ad24b6d2b38816522fe86072d1b0df04))
* experiment adapter trimming and option to do BC (also UMI if available) selection from end of the read (FWD only) ([#238](https://github.com/kircherlab/MPRAsnakeflow/issues/238)) ([04dd683](https://github.com/kircherlab/MPRAsnakeflow/commit/04dd6831d243bf22508b390b7c1926f744eb4759))
* fastq-join as option for merging reads (assignment workflow) ([#243](https://github.com/kircherlab/MPRAsnakeflow/issues/243)) ([093e288](https://github.com/kircherlab/MPRAsnakeflow/commit/093e288fd9a6f38df2be2f7e25ae18ecba0d3f7a))
* implement adapter trimming functionality in experiment rules ([9fd32ce](https://github.com/kircherlab/MPRAsnakeflow/commit/9fd32cee97dc69217f88f994249ea92ed0dd5b5e))


### Bug Fixes

* correct parameter name in check_version function ([7cd50a5](https://github.com/kircherlab/MPRAsnakeflow/commit/7cd50a52f3eaa8baae4d2d6937219b58c492d8d7))
* snakemake reverted default value handling ([#236](https://github.com/kircherlab/MPRAsnakeflow/issues/236)) ([fa5109b](https://github.com/kircherlab/MPRAsnakeflow/commit/fa5109baacc8252c9f407c9cc54e080ca72e32e4))


### Code Refactoring

* renaming output files to use dots instead as undersocres a file separators ([#239](https://github.com/kircherlab/MPRAsnakeflow/issues/239)) ([0546082](https://github.com/kircherlab/MPRAsnakeflow/commit/0546082a2edca83566dcb2283db61c423533524f))

## [0.5.9](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.5.8...v0.5.9) (2026-01-07)


### Bug Fixes

* Adding Zenodo DOI to Readme ([#231](https://github.com/kircherlab/MPRAsnakeflow/issues/231)) ([a3847a9](https://github.com/kircherlab/MPRAsnakeflow/commit/a3847a9bc074aa4d97322f0213d75a7a22d11450))

## [0.5.8](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.5.7...v0.5.8) (2025-10-27)


### Bug Fixes

* fixed various small bugs in mapping_bbmap.smk, attachBCToFastQ.py, quality_metrics.py ([#220](https://github.com/kircherlab/MPRAsnakeflow/issues/220)) ([90380be](https://github.com/kircherlab/MPRAsnakeflow/commit/90380be4e3777d34d8ad164e66f5272ebb3d9f86))
* issues in assignment check ([#230](https://github.com/kircherlab/MPRAsnakeflow/issues/230)) ([f25b74f](https://github.com/kircherlab/MPRAsnakeflow/commit/f25b74f488452e6fddcf67975f15e98cfa8b0d15)), closes [#217](https://github.com/kircherlab/MPRAsnakeflow/issues/217) [#221](https://github.com/kircherlab/MPRAsnakeflow/issues/221)
* workaround for default values in schema files when using remote exec ([#228](https://github.com/kircherlab/MPRAsnakeflow/issues/228)) ([261bcb3](https://github.com/kircherlab/MPRAsnakeflow/commit/261bcb33b85189cc3f3c8559d4c2514d4741c0c3))

## [0.5.7](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.5.6...v0.5.7) (2025-10-06)


### Bug Fixes

* max 255 read length allowed ([#224](https://github.com/kircherlab/MPRAsnakeflow/issues/224)) ([81029df](https://github.com/kircherlab/MPRAsnakeflow/commit/81029dfc27c7ebfef6de02b84d8b83568727af13)), closes [#205](https://github.com/kircherlab/MPRAsnakeflow/issues/205)

## [0.5.6](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.5.5...v0.5.6) (2025-10-01)


### Features

* bwa additional filtering ([#216](https://github.com/kircherlab/MPRAsnakeflow/issues/216)) ([9c81cfd](https://github.com/kircherlab/MPRAsnakeflow/commit/9c81cfd19ef35be4cfc8ef837b192dcc9b5b2ada))
* assignment workflow: allow single end reads (FW only) ([#218](https://github.com/kircherlab/MPRAsnakeflow/issues/218)) ([9c81cfd](https://github.com/kircherlab/MPRAsnakeflow/commit/e19621e3303e64a48bcb2904d76046fa396cf7a7))

## [0.5.5](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.5.4...v0.5.5) (2025-09-17)


### Bug Fixes

* removed hard-coded barcode length (20) in hybrid reads (assignment workflow) ([#213](https://github.com/kircherlab/MPRAsnakeflow/issues/213)) ([1d89232](https://github.com/kircherlab/MPRAsnakeflow/commit/1d892329ee25f427206ca1435df7ea7c9185ef9b))

## [0.5.4](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.5.3...v0.5.4) (2025-06-25)


### Features

* 5' and 3' adapter removal option using cutadapt ([#207](https://github.com/kircherlab/MPRAsnakeflow/issues/207)) ([a36c023](https://github.com/kircherlab/MPRAsnakeflow/commit/a36c0239e5015e2868e9fe729758a8d18eb357ad))


### Bug Fixes

* qname (read name) length cannot be longer than 255 characters ([#206](https://github.com/kircherlab/MPRAsnakeflow/issues/206)) ([46fe287](https://github.com/kircherlab/MPRAsnakeflow/commit/46fe287815777ca88a0e08607a205aba0bd7251e))

## [0.5.3](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.5.2...v0.5.3) (2025-05-13)


### Bug Fixes

* channel order has to be correct for newer samtools ([d0ada2b](https://github.com/kircherlab/MPRAsnakeflow/commit/d0ada2b38170015867f6173e217bf057508e97d4))

## [0.5.2](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.5.1...v0.5.2) (2025-05-13)


### Bug Fixes

* set htslib and samtools version to 1.21 to avoid ncurses lib clashes ([cb59bd4](https://github.com/kircherlab/MPRAsnakeflow/commit/cb59bd435b837b46775b412f883e38c7eec2ff0c))

## [0.5.1](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.5.0...v0.5.1) (2025-05-12)


### Bug Fixes

* missed config version upgrades ([df5391a](https://github.com/kircherlab/MPRAsnakeflow/commit/df5391aae45086ae592fa462dc7c0c9a83f14da0))

## [0.5.0](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.4.7...v0.5.0) (2025-04-09)


### ⚠ BREAKING CHANGES

* restructure folders and conda env import. Renaming of rules. Old SLURM ressoucres have to be updated

### Features

* IGVF qc metrics report ([3ec5012](https://github.com/kircherlab/MPRAsnakeflow/commit/3ec5012bec438a65da7e5cb15b1d39bfd6b6b0ec))
* Quality metric json file (for IGVF) and included within QC report ([981baac](https://github.com/kircherlab/MPRAsnakeflow/commit/981baaca6ac62b46c374aef3c146c80a35940071))


### Bug Fixes

* mpralib environment file ([070da2a](https://github.com/kircherlab/MPRAsnakeflow/commit/070da2a4944d25ecfd7aee7b4cbbfa5cfec92b73))
* using MPRAlib v0.6.1 ([4f45075](https://github.com/kircherlab/MPRAsnakeflow/commit/4f4507540f84a1133a1440c30175f47367911d58))


### Code Refactoring

* restructure folders and conda env import. Renaming of rules. Old SLURM ressoucres have to be updated ([f21cdca](https://github.com/kircherlab/MPRAsnakeflow/commit/f21cdcaf974f98d97a23c2a520a2d6862dd5c333))

## [0.4.7](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.4.6...v0.4.7) (2025-04-03)


### Bug Fixes

* assignment barcode counting ([9584802](https://github.com/kircherlab/MPRAsnakeflow/commit/95848023860f9b43e9c5a2e594c0fb9d3eda4205))
* merge.label.py does not return pseudocounts in barcode file ([#187](https://github.com/kircherlab/MPRAsnakeflow/issues/187)) ([023110a](https://github.com/kircherlab/MPRAsnakeflow/commit/023110a5368704e0efb464dbaef1a1d5fdcf6c86))
* report also barcodes that are lower than the min barcodes. ([90f1b14](https://github.com/kircherlab/MPRAsnakeflow/commit/90f1b14d04737723fa5852c809c44e497b2e2d3b)), closes [#185](https://github.com/kircherlab/MPRAsnakeflow/issues/185)
* issues on some environments while plotting with statistic_assignment.R ([#186](https://github.com/kircherlab/MPRAsnakeflow/pull/186))

## [0.4.6](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.4.5...v0.4.6) (2025-02-26)


### Bug Fixes

* revert v0.4.5. The fix was already implemented within the common.smk file ([7997440](https://github.com/kircherlab/MPRAsnakeflow/commit/799744050b540d96545ac72bc2280e8e37a2b61e))

## [0.4.5](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.4.4...v0.4.5) (2025-02-24)


### Bug Fixes

* change the length of the sequence we want to check in the attach_sequence case ([#177](https://github.com/kircherlab/MPRAsnakeflow/issues/177)) ([e3db5cf](https://github.com/kircherlab/MPRAsnakeflow/commit/e3db5cf487423126ada0fda5305f42a0b38f25cb))

## [0.4.4](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.4.3...v0.4.4) (2025-02-05)


### Bug Fixes

* qc report count typo fix ([#174](https://github.com/kircherlab/MPRAsnakeflow/issues/174)) ([d78d339](https://github.com/kircherlab/MPRAsnakeflow/commit/d78d3391700c092c90742d1e47dc7b65b4d6d808))

## [0.4.3](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.4.2...v0.4.3) (2025-01-29)


### Bug Fixes

* swap activity threshold and all output file paths in qc_report rule ([#172](https://github.com/kircherlab/MPRAsnakeflow/issues/172)) ([ff1b11c](https://github.com/kircherlab/MPRAsnakeflow/commit/ff1b11cc3baf84a0a0c45201d93b36d8f630d42b))

## [0.4.2](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.4.1...v0.4.2) (2025-01-07)


### Bug Fixes

* swapped barcode output files ([a851ad2](https://github.com/kircherlab/MPRAsnakeflow/commit/a851ad2d74aad0834b853eb7432da10f369f8e21))

## [0.4.1](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.4.0...v0.4.1) (2025-01-06)


### Bug Fixes

* update configs to 0.4 ([bd79b6b](https://github.com/kircherlab/MPRAsnakeflow/commit/bd79b6b22118749a5eec89ec95815b243318dd25))

## [0.4.0](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.3.1...v0.4.0) (2025-01-02)


### ⚠ BREAKING CHANGES

* Major version change because of changes in config that are not backward compatible.

### Features

* Add performance tweaks for resource optimization in workflow rules ([5ed1ef9](https://github.com/kircherlab/MPRAsnakeflow/commit/5ed1ef9fb92acc56c999f26183e5ef0d4caf5be0))
* Allowing also only FW reads with a UMI ([56b2254](https://github.com/kircherlab/MPRAsnakeflow/commit/56b225405bba024779edba11a332872b01ac02de))
* Strand sensitive option ([f315aab](https://github.com/kircherlab/MPRAsnakeflow/commit/f315aabd24ebe6f524b9fb3b008f5af96987775d))
* One DNA or RNA count file across multiple replicates ([ccbacee](https://github.com/kircherlab/MPRAsnakeflow/commit/ccbacee28bd551f9508e80d4e966188f970ba077))

## [0.3.1](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.3.0...v0.3.1) (2024-12-17)


### Bug Fixes

* Wrong experiment count plots in QC report ([#149](https://github.com/kircherlab/MPRAsnakeflow/issues/149)) ([d2be468](https://github.com/kircherlab/MPRAsnakeflow/commit/d2be46891650ff9aaab61f750a4b3bc3b65e3e88))

## [0.3.0](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.2.0...v0.3.0) (2024-11-20)


### ⚠ BREAKING CHANGES

* versioned config ([#140](https://github.com/kircherlab/MPRAsnakeflow/issues/140))

### Features

* versioned config ([#140](https://github.com/kircherlab/MPRAsnakeflow/issues/140))
* MAD outlier removal is completely removed ([#140](https://github.com/kircherlab/MPRAsnakeflow/issues/140))
* default is NO outlier detection (none is not present anymore) ([#140](https://github.com/kircherlab/MPRAsnakeflow/issues/140))
* global config is removed. splits moved now withing mapping in assignment ([#140](https://github.com/kircherlab/MPRAsnakeflow/issues/140))

## [0.2.0](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.1.1...v0.2.0) (2024-11-05)

### ⚠ BREAKING CHANGES

* Support only snakemake >=8.24.1 ([#130](https://github.com/kircherlab/MPRAsnakeflow/pull/130))
* File output formats and locations changed
* Normalization changed which may result in different outputs

### Features

 * outlier removal methods ([#132](https://github.com/kircherlab/MPRAsnakeflow/pull/132))
 * No min max length for bbmap. default mapq is 30. ([#131](https://github.com/kircherlab/MPRAsnakeflow/pull/131))
 * IGVF outputs ([#129](https://github.com/kircherlab/MPRAsnakeflow/pull/129))
 * Documentation improvements


### Bug Fixes

## [0.1.1](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.1.0...v0.1.1) (2024-09-30)

### Bug Fixes

* Detach from anaconda ([#122](https://github.com/kircherlab/MPRAsnakeflow/issues/122)) ([16bcea2](https://github.com/kircherlab/MPRAsnakeflow/commit/16bcea2f04190a5965ad1865cf30f6dd44f1b6a0))
* memory resources for bbmap ([#123](https://github.com/kircherlab/MPRAsnakeflow/issues/123)) ([af93f58](https://github.com/kircherlab/MPRAsnakeflow/commit/af93f588e9387ddf91197f5587d36c3481499b38))

## [0.1.0](https://github.com/kircherlab/MPRAsnakeflow/compare/v0.0.1...v0.1.0) (2024-09-18)

First release of MPRAsnakeflow!

### Feature highlights

* Multiple assignment mapping strategies (BBMap, exact, bwa)
* Optimized assignment for variants with BBMap
* QC report for assignment and experiment workflow
* Barcode count output
* Snakemake 8 support
* Extended documentation: https://mprasnakeflow.readthedocs.io


## older development


### ⚠ BREAKING CHANGES

* latest development for new release ([#133](https://github.com/kircherlab/MPRAsnakeflow/issues/133))
* pseudocounts where not used correctly when RNA or DNA set to 0
* DNA and RNA join correction

### Features

* Add assignment_merge thread configuration ([26e68c2](https://github.com/kircherlab/MPRAsnakeflow/commit/26e68c26f315c524cf28692d636127fbf3bdeb2b))
* better assignment BC statistics ([00187e6](https://github.com/kircherlab/MPRAsnakeflow/commit/00187e689b2fad10fd317aa2efbd0214fad14434))
* configurable min mapping quality ([28045ae](https://github.com/kircherlab/MPRAsnakeflow/commit/28045aea23d6fa03f3883b3dc44b3cbc3e8f6205))
* extending figure width ([8bf81c4](https://github.com/kircherlab/MPRAsnakeflow/commit/8bf81c45e45f9b4c23856c0915bd527f9699b6cd))
* faster design check ([315b402](https://github.com/kircherlab/MPRAsnakeflow/commit/315b402499d92850382d4110e153602020381e8a))
* fastq-join implementation ([aaf5315](https://github.com/kircherlab/MPRAsnakeflow/commit/aaf5315364ebb3e3117c3996c2fc357aa9c4d595))
* latest development for new release ([#133](https://github.com/kircherlab/MPRAsnakeflow/issues/133)) ([bdfc557](https://github.com/kircherlab/MPRAsnakeflow/commit/bdfc557a64cecc19d1d86eead8bdb691a1ff2166))
* make filtering consistent ([5f7a4c5](https://github.com/kircherlab/MPRAsnakeflow/commit/5f7a4c5a2a3389a75b8d6b7e9aaf34485127b3a4))
* master variant table ([6bda47c](https://github.com/kircherlab/MPRAsnakeflow/commit/6bda47c78021bc1728bb81a716f5e6daaf6ac084))
* new final output file with merged replicates ([66cf017](https://github.com/kircherlab/MPRAsnakeflow/commit/66cf0172cb6b556e507be4daabf7e859447787f3))
* only link assignment fasta when possible ([d7d3822](https://github.com/kircherlab/MPRAsnakeflow/commit/d7d3822933c98d790f3c96bcbfdef1a7ea70c7df)), closes [#50](https://github.com/kircherlab/MPRAsnakeflow/issues/50)
* remove space, speedup BC extraction ([70e9bd0](https://github.com/kircherlab/MPRAsnakeflow/commit/70e9bd06b91ccb37333e0a69c47917a5eacbf639))
* replace merging by NGmerge ([0aa8cad](https://github.com/kircherlab/MPRAsnakeflow/commit/0aa8cad6884a953f9c89a2fdd7af397e4e9ccf3e))
* snakemake 8 compatibility ([cf38ed9](https://github.com/kircherlab/MPRAsnakeflow/commit/cf38ed9de68367d0d1700ccff262e91ad6f1fbc0))
* snakemake 8 ready with workflow profile ([d637e1f](https://github.com/kircherlab/MPRAsnakeflow/commit/d637e1fdbebfca0616d944101898fbf522df9c82))
* statistic for assignment workflow ([10c3b26](https://github.com/kircherlab/MPRAsnakeflow/commit/10c3b2677ada59925ddd3de777f7488c9a20e981))
* using reverese compelment BCs ([d009a6c](https://github.com/kircherlab/MPRAsnakeflow/commit/d009a6c3de7de50a210479b73f5d41969287e234))


### Bug Fixes

* batch size issue in sort ([487ba8c](https://github.com/kircherlab/MPRAsnakeflow/commit/487ba8ce059517030fcab3708c3cea40ac210f7e))
* correct use of assignment configs ([58b64f1](https://github.com/kircherlab/MPRAsnakeflow/commit/58b64f1e753477f7410233ac546701ddbd60f9f2))
* corrected qc_report_assoc ([afb0127](https://github.com/kircherlab/MPRAsnakeflow/commit/afb012750bc1c3c39f2348b283c23ff97695f672))
* Detach from anaconda ([#122](https://github.com/kircherlab/MPRAsnakeflow/issues/122)) ([16bcea2](https://github.com/kircherlab/MPRAsnakeflow/commit/16bcea2f04190a5965ad1865cf30f6dd44f1b6a0))
* DNA and RNA join correction ([7214743](https://github.com/kircherlab/MPRAsnakeflow/commit/7214743008dc6796077e45e62646174ffaf52290))
* filter config ([38ee37e](https://github.com/kircherlab/MPRAsnakeflow/commit/38ee37ecfcf4a71b840575504811512e0d64609a))
* issue with stats and asisgnment ([d935fa1](https://github.com/kircherlab/MPRAsnakeflow/commit/d935fa1f62825dfdcd2cd77e4c73bc37686519a0))
* memory resources for bbmap ([#123](https://github.com/kircherlab/MPRAsnakeflow/issues/123)) ([af93f58](https://github.com/kircherlab/MPRAsnakeflow/commit/af93f588e9387ddf91197f5587d36c3481499b38))
* plots per insert only used last experiment. not all. ([c2fd82b](https://github.com/kircherlab/MPRAsnakeflow/commit/c2fd82b6d4b545cc3a1acc5ecb145eb3c93af49d))
* pseudocounts where not used correctly when RNA or DNA set to 0 ([d2483f9](https://github.com/kircherlab/MPRAsnakeflow/commit/d2483f9c7724e0b63cec4f251519d449831ecf04))
* remove illegal characters from reference ([0ebee81](https://github.com/kircherlab/MPRAsnakeflow/commit/0ebee81d74f3f6170ce4b8083e18c746550154db))
* rename barcoe output header ([635f043](https://github.com/kircherlab/MPRAsnakeflow/commit/635f0431c78d3d5bf9b77a16f6ce26d9ff6c82c2))
* rule make_master_tables fix ([df42845](https://github.com/kircherlab/MPRAsnakeflow/commit/df42845b6dfa9a7b64f187b38f1f15518f3e4a31))
* statistic total counts ([6381b92](https://github.com/kircherlab/MPRAsnakeflow/commit/6381b928fd6c14eb16801a459b8546fa37004c74))
* typo in report ([ace8cca](https://github.com/kircherlab/MPRAsnakeflow/commit/ace8ccacb3d7ece04af43c9b0b1dc9c9c087a2c4))
* upgrade code to new pandas version ([aaea236](https://github.com/kircherlab/MPRAsnakeflow/commit/aaea236bc83f459e7a6c2d3fee96d49c79762325))
* using correct threads ([6dcad7d](https://github.com/kircherlab/MPRAsnakeflow/commit/6dcad7d34173f37d4538644b1ba0d918afd8f149))
* using multiple fastq inputs in counts ([95935cf](https://github.com/kircherlab/MPRAsnakeflow/commit/95935cfe69956ca50307a9c6a774c4b96dff860f))
