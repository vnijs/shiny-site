## Thanks for @timelyportfolio for this comment/fix
## https://github.com/timelyportfolio/functionplotR/issues/1#issuecomment-224369431
getdeps <- function() {
  htmltools::attachDependencies(
    htmltools::tagList(),
    c(
      htmlwidgets:::getDependency("functionplot","functionplotR"),
      htmlwidgets:::getDependency("datatables","DT")
    )
  )
}

shinyUI(
  navbarPage("Shiny-site",
    tabPanel("Page 1", uiOutput("page1")),
    tabPanel("Page 2", uiOutput("page2")),
    tabPanel("Page 3", uiOutput("page3"), getdeps())
  )
)
