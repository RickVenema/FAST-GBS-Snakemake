

rule download:
    params:
        samples = config["SRA_numbers"],
        output_dir = config["wdir"] + "data/"
    output:
        config["wdir"]+"data/{sample}.fastq"
    threads: 16
    shell:
        "parallel-fastq-dump -t {threads} -s {params.samples} -O {params.output_dir}"
