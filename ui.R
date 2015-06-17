shinyUI(
  navbarPage("Dynamic rmarkdown in a Shiny app",
    tabPanel("Title", uiOutput("full"))      ## but this does show plot
  )
)
