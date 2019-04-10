
rule samtools_sort:
    input:
       config["wdir"]+"mapped_reads/{sample}.bam"
    output:
        config["wdir"]+"sorted_reads/{sample}.bam"
    threads: int(config["threads"])
    log:
        "logs/samtools_sort.log"
    shell:
        "samtools sort -@ {threads} -T {output} -O bam {input} > {output} >2 {log}"
        
        
rule samtools_index:
    input:
        config["wdir"]+"sorted_reads/{sample}.bam"
    output:
        config["wdir"]+"sorted_reads/{sample}.bam.bai"
    log:
        "logs/samtools_index.log"
    shell:
        "samtools index  {input} >2 {log}"
