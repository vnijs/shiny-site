shinyUI(
  navbarPage("Shiny-site",
    tabPanel("Page 1", uiOutput("page1")),
    tabPanel("Page 2", uiOutput("page2"))
  )
)
