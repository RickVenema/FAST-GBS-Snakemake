

rule bwa_map:
    input:
        config["refgenome"],
        config["wdir"]+"data/{sample}.fastq"
    output:
        config["wdir"]+"mapped_reads/{sample}.bam"
    threads: 20
    shell:
        "bwa mem -t 16 {input} | samtools view -Sb - > {output}"
