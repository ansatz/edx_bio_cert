path<-"/rstudio/raw2_idat"
list.files(path)
targets <- read.csv(file.path(path,"targets.csv"),as.is=TRUE)

targets$Basename <- file.path(path,targets$Basename)
library(minfi)
rgset <- read.metharray(targets$Basename,verbose=TRUE)
rownames(targets) <- sampleNames(rgset)
targets <- as(targets, "DataFrame")
pData(rgset) <- targets

dim(getRed(rgset))
dim(getGreen(rgset))

mset <- preprocessIllumina(rgset)
mset <- mapToGenome(mset)
head(mset)



library(bumphunter)
# We need to convert mset to a GenomicRatioSet using the following command:
grset <- ratioConvert(mset,what="beta",type="Illumina")
#class(grset) #GenomicRatioSet

#Q4 Run bumphunter() as determined in the previous assessment question.

#What is the "area" of the first DMR listed in the DMR table returned by bumphunter()?
res2 <- bumphunter(grset, model.matrix(~pData(grset)$Status), cutoff=0.1)
#head(res2)
