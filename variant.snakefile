rule bcftools_call:
    input:
        fa=config["refgenome"],
        bam=expand(config["wdir"]+"sorted_reads/{sample}.bam", sample=config["datasets"]),
        bai=expand(config["wdir"]+"sorted_reads/{sample}.bam.bai", sample=config["datasets"])
    output:
        "calls/all.vcf"
    shell:
        "samtools mpileup -g -f {input.fa} {input.bam} | "
        "bcftools call --threads 20 -mv - > {output}"
