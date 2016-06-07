library(dplyr)
library(shiny)
library(knitr)
library(DT)

## options for knitting/rendering rmarkdown chunks
knitr::opts_chunk$set(echo = FALSE, comment = NA, cache = FALSE,
                      message = FALSE, warning = FALSE)

## function to render .md files to html
inclMD <- function(path)
  markdown::markdownToHTML(path, fragment.only = TRUE, options = "", stylesheet = "")

## function to render .Rmd files to html - does not embed image or add css
# inclRmd <- function(path, r_env = parent.frame()) {
#   paste(readLines(path, warn = FALSE), collapse = '\n') %>%
#     knitr::knit2html(text = ., fragment.only = TRUE, quiet = TRUE,
#                      envir = r_env, options = "", stylesheet = "") %>%
#     gsub("&lt;!--/html_preserve--&gt;","",.) %>%  ## knitr adds this
#     gsub("&lt;!--html_preserve--&gt;","",.) %>%   ## knitr adds this
#     HTML %>%
#     withMathJax
# }

inclRmd <- function(path, r_env = parent.frame()) {
  paste(readLines(path, warn = FALSE), collapse = '\n') %>%
  knitr::knit2html(text = ., fragment.only = TRUE, envir = r_env,  options = "",
                   stylesheet = "") %>%
    gsub("&lt;!--/html_preserve--&gt;","",.) %>%  ## knitr adds this
    gsub("&lt;!--html_preserve--&gt;","",.) %>%   ## knitr adds this
    HTML
  # %>% withMathJax
}

## make html table
make_table <- function(dat, width = "50%")
  knitr::kable(dat, align = "c", format = "html",
               table.attr = paste0("class='table table-condensed table-hover' style='width:", width, ";'"))

