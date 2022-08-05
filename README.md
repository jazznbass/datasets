# datmat

This package contains datasets and materials for my teaching courses.  

I recommend to use the RStudio environment.

## Installing `datmat`

1. Install R and RStudio  
2. If you are running Windows OS you have to install Rtools: https://cran.r-project.org/bin/windows/Rtools/. Choose the Rtools version that fits to the R version you installed. (keep in mind that you may have to update Rtools when you update R).  
3. Install the `devtools` package with `install.packages("devtools")`.  
4. Install `datmat` with `devtools::install_github("jazznbass/datmat")`  

`library(datmat)` loads the namespace into your R session (that is, makes the datasets and files available).

Use `data(package = "datmat")` to get an overview of all available datasets.

Use `open_file()` to see which files are available.

`open_file(filename)` will open a file.

Example: `open_file("rmarkdown_silly_example.Rmd")`



