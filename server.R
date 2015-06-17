shinyServer(function(input, output, session) {

	output$ui_line <- renderUI({
	  ## using renderUI here because Knitr will not create a slider
	  tagList(
	    sliderInput("nr_points", "", min = 10, max = 100, value = 50),
	    renderPlot({
	      nr <- if (is.null(input$nr_points)) 2 else input$nr_points
	      plot(1:nr, rnorm(nr))
	    })
	  )
	})

	output$page1 <- renderUI({
	  inclRmd("page1.Rmd")
	})

	output$page2 <- renderUI({
	  inclRmd("page2.Rmd")
	})
})
