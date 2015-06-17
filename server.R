shinyServer(function(input, output, session) {

 	output$ui_faithfull <- renderUI({
 	  ## example copied from from http://shiny.rstudio.com/gallery/faithful.html
	  tagList(
   	  selectInput(inputId = "n_breaks",
   	              label = "Number of bins in histogram (approximate):",
   	              choices = c(10, 20, 35, 50),
   	              selected = 20),
	    renderPlot({
	      nr <- if (is.null(input$n_breaks)) 10 else input$n_breaks
     	  hist(faithful$eruptions,
     	       probability = TRUE,
     	       breaks = as.numeric(nr),
     	       xlab = "Duration (minutes)",
     	       main = "Geyser eruption duration")
	    })
	  )
 	})

	output$ui_line <- renderUI({
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
