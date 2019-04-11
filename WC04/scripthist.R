args = commandArgs(trailingOnly=TRUE)
data <- read.csv( file = args[1], header=F, sep=";")
jpeg(args[2])
hist(x=data$V1,
	main="Expression values of gene CCND3 Cyclin D3",
	xlab="gene CCND3 Cyclin D3 expression",
	ylab="count")
dev.off()
