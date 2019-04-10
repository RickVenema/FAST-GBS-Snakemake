

configfile: "downloadconfig.yaml"
configfile: "config.yaml"

include: "bwa.snakefile"
include: "samtools.snakefile"
include: "variant.snakefile"
include: "downloadgenomes.snakefile"

rule all:
    input:
        "calls/all.vcf"
    log:
        "logs/all.log"
