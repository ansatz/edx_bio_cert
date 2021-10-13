docker-run:

	#docker run -d -p 8787:8787 -v $(pwd):/rstudio --name rockr rocker/hadleyverse:v1
	# got DESeq2 on tidyverse hadleyverse is f-ed
	docker run -d -p 8787:8787 -v $(pwd):/rstudio --name rockr rocker/tidyverse:v2

docker-commit:

	#echo docker commit rocker/hadleyverse:v2
	echo docker commit rocker/tidyverse:v3

git-push:
	# git remote add origin https://github.com/ansatz/edx_bio_cert.git
	# git remote -v
	#git branch -M main
	git push -u origin main



cli:
	# open container
	docker exec -it rockr /bin/bash
	# open r
	?
	# rmardown::render("stats_working_v2.Rmd")


install-packages:
	#bioc 3.5
	#bioconductor 3.5
	#R 3.4.2 Short Summer
	R.version
	?biocLite



rmd-tabs:
	### [topic] //3 topic
	#### {.tabset} //4

	##### Notes: {.hidden .active} //4

	---

	##### 1. Transcriptome //4
		
	---

rmd-auto-gen:
	# auto generate chunks
	rmd <- list.files(pattern = '*.Rmd', recursive = T)
	chunks <- paste0("```{r child = '", rmd, "'}\n```\n")
	cat(chunks, sep = '\n')
	# ```{r child = 'chapter1.Rmd'}
	# ```
	#
	# ```{r child = 'chapter2.Rmd'}
	# ```

rmd-noecho:
	```{r setup, echo=FALSE, results='hide', message=FALSE, warning=FALSE}

ocManager::install()
#   #[a] update all
#
#   #check version
#   BiocManager::version()
#   BiocManager::valid()

#https://github.com/genomicsclass/labs/blob/master/rnaseq/rnaseq_pkgs.R
cranpkgs <- c("ggplot2","pheatmap")
install.packages(cranpkgs)
    
# rafalib from github (not strictly necessary, but useful for plots)
install.packages("devtools")
library(devtools)
install_github("ririzarr/rafalib")
    
# the rest are Bioconductor packages
install-packages:
	biocpkgs <- c("Rsamtools",
	              "GenomicFeatures",
	              "GenomicAlignments",
	              "Rsubread",
	              "airway",
	              "pasilla",
	              "DESeq2",
	              "DEXSeq",
	              "vsn",
	              "sva",
	              "org.Hs.eg.db",
	              "cummeRbund",
	              "pasillaBamSubset",
	              "TxDb.Dmelanogaster.UCSC.dm3.ensGene")
BiocManager::install(biocpkgs)
	


	

