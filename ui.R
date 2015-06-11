shinyUI(
  navbarPage("Bootcamp",
    tabPanel("Probability",
      inclRmd("part1.Rmd"),
      sliderInput("nr_points", label = "", min = 0, max = 10, value = 2),
      plotOutput("line"),
      inclRmd("part2.Rmd")
    ),
    # tabPanel("Statistics", inclRmd("full.Rmd")) ## this doesn't show plot
    tabPanel("Statistics", uiOutput("full"))      ## but this does show plot
  )
)
