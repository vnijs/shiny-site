library(shiny)
library(rmarkdown)
library(knitr)

shinyServer(function(input, output, session) {

	output$line <- renderPlot({
		plot(1:input$nr_points)
	})

	output$full <- renderUI({
	  inclRmd("full.Rmd")
	})
})
