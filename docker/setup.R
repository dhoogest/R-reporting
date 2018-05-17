library(parallel)
ncores <- min(c(8, parallel::detectCores()))

cran_packages <- c(
    "R.utils",
    "ape",
    "argparse",
    "dplyr",
    "lattice",
    "latticeExtra",
    "reshape2",
    "rmarkdown",
    "tidyverse"
)

install.packages(
    cran_packages,
    repos="http://cran.us.r-project.org",
    Ncpus=ncores,
    clean=TRUE)

bioc_packages <- c(
    "devtools",
    "ggtree"
)

## source("https://bioconductor.org/biocLite.R")
biocLite(
    bioc_packages,
    suppressUpdates=TRUE,
    Ncpus=ncores,
    clean=TRUE)

