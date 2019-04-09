# FAST-GBS Snakemake implementation

A snakemake implementation of the FAST-GBS pipeline

## Introduction

Fast-GBS is originally a bash pipeline facilitating the processing of FASTQ sequence files obtained using a genotyping-by-sequencing method (GBS). 
It includes a set of bash commands, python home-made scripts, and well-known bioinformatics software such as sabre, bwa, samtools, and platypus. 
Users simply fill out a parameter file and then launch the program. For each analysis, it requires the existence of a reference genome. 
This may be a relatively complete genome made of pseudochromosomes or a more preliminary draft consisting of scaffolds and contigs.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

For this pipeline, a couple of programs are required. The following programs are needed:

```
* BWA
* Snakemake
* Python 3.x
* Samtools
```

### Installing

A step by step series of examples that tell you how to get a development env running

Say what the step will be

```
Give the example
```

And repeat

```
until finished
```

End with an example of getting some data out of the system or using it for a little demo

## Built With

* [Snakemake](https://snakemake.readthedocs.io/en/stable/) - Pipeline framework
* [BWA](http://bio-bwa.sourceforge.net/) - Mapping Algorithm
* [Samtools](http://www.htslib.org/) - Interactions with sequencing data
* [Python](https://www.python.org/) - Programming language on which snakemake is build


## Authors
* **Rick Venema** - *Snakemake Pipeline* - [RickVenema](https://github.com/RickVenema)
* **Davoud Torkamaneh**, **Jérôme Laroche**, **Maxime Bastien**, **Amina Abed**, and **François Belzile** - Original pipeline

## License

This project is licensed under the GNU GPL License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* This pipeline is based of [FAST-GBS](https://bitbucket.org/jerlar73/fast-gbs/overview). The [Article](https://bmcbioinformatics.biomedcentral.com/track/pdf/10.1186/s12859-016-1431-9) contains a lot more information about testing and the pipeline in general 
* This project was done for the dataprocessing course at Hanze University of Applied Sciences.

