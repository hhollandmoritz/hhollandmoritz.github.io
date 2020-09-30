#!/usr/bin/env Rscript

# This script created by Nicole White
# https://nicolewhite.github.io/2015/02/07/r-blogging-with-rmarkdown-knitr-jekyll.html
# and modified slightly so that the posts have liquid code tags. (My code highlighting style doesn't work well with ``` tags.)

library(knitr)

# Get the filename given as an argument in the shell.
args = commandArgs(TRUE)
filename = args[1]

# Check that it's a .Rmd file.
if(!grepl(".Rmd", filename)) {
  stop("You must specify a .Rmd file.")
}

# Knit and place in _posts.
dir = paste0("../_posts/", Sys.Date(), "-")
output = paste0(dir, sub('.Rmd', '.md', filename))
render_jekyll(highlight = "pygments", extra = "linenos") # use liquid code tags with line numbers
knit(filename, output)

# Copy .png files to the images directory.
fromdir = "{{ site.url }}/images"
todir = "../images"
pics = list.files(fromdir, ".png")
pics = sapply(pics, function(x) paste(fromdir, x, sep="/"))
file.copy(pics, todir, overwrite = TRUE)
# remove the unsightly {{site.url}} directory
unlink("{{ site.url }}", recursive=T)