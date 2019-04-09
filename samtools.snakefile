
rule samtools_sort:
    input:
       config["wdir"]+"mapped_reads/{sample}.bam"
    output:
       config["wdir"]+"sorted_reads/{sample}.bam"
    shell:
        "samtools sort -@ 8 -T {output} -O bam {input} > {output}"
        
        
rule samtools_index:
    input:
        config["wdir"]+"sorted_reads/{sample}.bam"
    output:
        config["wdir"]+"sorted_reads/{sample}.bam.bai"
    shell:
        "samtools index {input}"
