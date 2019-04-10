

rule download:
    params:
        samples = config["SRA_numbers"],
        output_dir = config["wdir"] + "data/"
    output:
        config["wdir"]+"data/{sample}.fastq"
    threads: int(config["threads"])
    log: 
        "logs/download.log"
    shell:
        "parallel-fastq-dump -t {threads} -s {params.samples} -O {params.output_dir} >2 {log}"
