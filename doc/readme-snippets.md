:REFS:
//exon/isoform
- filtering comparison : https://genomebiology.biomedcentral.com/articles/10.1186/s13059-015-0862-3
- dexseq : https://genome.cshlp.org/content/22/10/2008.full


remotes::install_version("survival","3.1.6")
install_packages("HMISC") worked


//cran ubuntu guide for installing:
://cran.r-project.org/bin/linux/ubuntu/
://cran.r-project.org/bin/linux/ubuntu/olderreleasesREADME.h


//install package version
remotes::install_version("mvtnorm","1.0.10")

deb ://cloud.r-project.org/bin/linux/ubuntu trusty/
apt-get install r-base-dev


//DESeq2
 lib not installing
Rm requires R >= 3.5.0

//design matrix
psych : exp-design ; courses.washington.edu/smartspy

-
--------------------------------------------------------------------------------
//cmds
docker run -d -p 8787:8787 -v $(pwd):/rstudio --name rockr rocker/hadleyverse:v1

localhost:8787 rstudio 
6_casestudies.Rmd


//Rmd
source("https://bioconductor.org/biocLite.R")
--------------------------------------------------------------------------------
// tabs :
###edx

#### {.tabset}

##### Questions: {.hidden .active}
""

#####  fastqc Q1

--------------------------------------------------------------------------------

//insert images : <img src=/rstudio/qualityscoresfq.png> 
//knit document : C-S-K
//code block
```{r [name] echo=FALSE, results='hide'}
# echo=false just displays the results, not the code; ie a plot
# results='hide'; no results; ie load some libs
```

//tufte style
- tufte style ://rstudio.github.io/tufte/ tufte style
---
title: " "
author: "John Smith"
output:
  tufte::tufte_handout: default
  tufte::tufte_html: default
---

//User-agent
//safari 12.1.2
Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/703.3.8 (KHTML, like Gecko) Version/12.1.2 Safari/703.3.8

//vim
//repeat char : Ctrl+o 80i- Esc
//file browser  :e .
//new tab       :newtab

//cufflinks 
:REF: http://cole-trapnell-lab.github.io/cufflinks/

//linode http://45.79.195.182


//rstudio cannot save file
chmod -R 777 edx_bio_cert/
-rw-r--r-- 1 root root   551 Oct 13 11:54 6cs_isoform_cummerbund.Rmd
->
-rwxrwxrwx 1 root root   551 Oct 13 11:54 6cs_isoform_cummerbund.Rmd


//cufflinks docs :
http://cole-trapnell-lab.github.io/cufflinks/manual/

//Rmd
//insert image
```{r pressure, echo=FALSE, fig.cap="A caption", out.width = '100%'}
knitr::include_graphics("temp.png")
```
//insert table
```{r table}
knitr::kable(mtcars[1:5,, 1:5], caption = "A table caption")
```
bookdown : https://bookdown.org/yihui/bookdown/figures.html


bookdown dplyr : https://bookdown.org/ybrandvain/Applied-Biostats/rdata2.html



//normalization methods
classic-fpkm	Yes	Yes	Library size factor is set to 1 - no scaling applied to FPKM values or fragment counts. (default for Cufflinks)
geometric	No	Yes	FPKMs and fragment counts are scaled via the median of the geometric means of fragment counts across all libraries, as described in Anders and Huber (Genome Biology, 2010). This policy identical to the one used by DESeq. (default for Cuffdiff)
quartile	No	Yes	FPKMs and fragment counts are scaled via the ratio of the 75 quartile fragment counts to the average 75 quartile value across all libraries.



# Dir issue 
#	#lib = "/usr/local/lib/R/library"' is not writable
#	#.libPaths() //1] "/home/rstudio/R/x86_64-pc-linux-gnu-library/4.1"
#	#[2] "/usr/local/lib/R/site-library"                  
#	#[3] "/usr/local/lib/R/library"
#	chmod -R 777 /usr/local/lib/R	
#
#	# resources : https://github.com/davetang/learning_docker/tree/master/rstudio
#
#rstudio-console-install:
#	#Bioconductor
#	#https://github.com/genomicsclass/labs/blob/master/rnaseq/r_bioc_links.md
#	BiocManager::install()
#	#[a] update all
#
#	#check version
#	BiocManager::version()
#	BiocManager::valid()
#
#	#https://github.com/genomicsclass/labs/blob/master/rnaseq/rnaseq_pkgs.R
#	cranpkgs <- c("ggplot2","pheatmap")
#	install.packages(cranpkgs)
#	
#	# rafalib from github (not strictly necessary, but useful for plots)
#	install.packages("devtools")
#	library(devtools)
#	install_github("ririzarr/rafalib")
#	
#	# the rest are Bioconductor packages
#	biocpkgs <- c("Rsamtools",
#	              "GenomicFeatures",
#	              "GenomicAlignments",
#	              "Rsubread",
#	              "airway",
#	              "pasilla",
#	              "DESeq2",
#	              "DEXSeq",
#	              "vsn",
#	              "sva",
#	              "org.Hs.eg.db",
#	              "cummeRbund",
#	              "pasillaBamSubset",
#	              "TxDb.Dmelanogaster.UCSC.dm3.ensGene")
#	BiocManager::install(biocpkgs)
#
#
#
#
#docker-run:
#
#	docker run -d -p 28787:8787 -v "$(PWD)":/rstudio --name rockr rocker/tidyverse
#
#docker run --rm \
#           -p 28787:8787 \
#           -d \
#           --name rstudio_server \
#           -v /home/dtang/r_packages/:/packages \ #packages
#           -e PASSWORD=password \
#           -e USERID=$(id -u) \
#           -e GROUPID=$(id -g) \
#           davetang/rstudio:4.0.5
#

docker-rstudio-paths:
	# Current library paths (user and system)
	.libPaths()

	# Find user libraries of previous versions of R
	# This works on Windows not sure about Mac/Linux
	list.dirs("~/R/win-library/", recursive=FALSE)

	# OK, get a character vector of names of those packages installed in user 
	# library of old version. e.g.
	old_list <- as.data.frame(installed.packages(
                          lib.loc="path_to_your_old/R/win-library/3.6"))
	old_list$Package

	# Re-install those packages in the user library for the new version
	install.packages(old_list$Package)


#packages:
#	.Rprofile 
#	/usr/local/lib/R/library
#
##cli:
##	#running image
##	docker run -d -p 8787:8787 -v $(pwd):/rstudio --name rockr rocker/hadleyverse:v1
##	#you can bind to any port you like on the host side (left side port number), there is no need to change the EXPOSE command. This is how any docker application works :-)
##
##	#e.g. run on port 8888 instead:
##
#
#docker-container:
#	docker exec -it rockr /bin/bash
#	# rmardown::render("stats_working_v2.Rmd")
#
#
##vps:
##	#check if response
##	netstat - peantl | grep ":8787"
##	#rstudio config
##	/etc/rstudio/rserver.conf #added www-port=77
##
##	#nginx
##	/etc/nginx/sites-enabled/jekyll
##
##	#ufw
##	ufw status
##	ufw allow port
##	ufw allow port/tcp
##	ufw deny
##	ufw reload
##	service ssh restart
##
##docker-img:
##	docker pull rocker/verse
##	docker run -d -p 80:8787 rocker/verse
##	usr/lib/rstudio-server/bin/rserver --www-port=77 --server-daemonize=0
##
##logs:
##	netstat -lntp # from inside container
##	curl -i localhost:8888 #from inside container
##	# only 8787 works
##	ps -ef | grep container-ip
##
##port-fwd:
##	#For example, I have an instance of jupyter notebook running on port 8700. I can access it through:
##	#localhost:8700, after setting up an ssh forward using:
##	ssh -N -f -L localhost:77:localhost:77 username@server_url
##
##rstudio-server:
##	#conf:
##	#https://docs.rstudio.com/ide/server-pro/1.4.1106-5/rstudio-server-configuration.html
##	#https://support.rstudio.com/hc/en-us/articles/200552316-Configuring-the-Server
##	echo "www-port=77" >> /etc/rstudio/rserver.conf
##	/usr/lib/rstudio-server/bin/rstudio-server restart
##	https://www.bioconductor.org/help/docker/
##
##rstudio-connect:
##	#File: /etc/rstudio-connect/rstudio-connect.gcfg
##	[HTTP]
##	Listen = :80
##
##	#Then restart RStudio Connect by running the following command:
##	sudo systemctl restart rstudio-connect
##
#
#sync:
#	tar cvzf rnaseq-course.scriv.tar.gz rnaseq-course.scriv
#	scp rnaseq-course.scriv.tar.gz root@45.79.195.182:/root/rstudio/rwdcrstudio
