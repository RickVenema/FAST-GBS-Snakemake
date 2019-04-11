args = commandArgs(trailingOnly=TRUE)
data <- read.csv( file = args[1], header=F, sep=",")
data <- as.matrix(data[-1,-1])
rownames(data) <- read.csv(file=args[1], header=F, sep=",")[-1,1]
colnames(data) <- read.csv(file=args[1], header=F, sep=",")[1,-1]
jpeg(args[2])
heatmap(data)
dev.off()