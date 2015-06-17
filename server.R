shinyServer(function(input, output, session) {

	output$ui_line <- renderUI({
	  tagList(
	    sliderInput("nr_points", "", min = 1, max = 10, value = 3),
	    renderPlot({
	      nr <- if (is.null(input$nr_points)) 2 else input$nr_points
	      plot(1:nr)
	    })
	  )
	})

# 	output$mc1_profit <- renderUI({
# 	  tagList(
# 	    sliderInput("price", label = "Adjust price:", min = 0, max = 12,
# 	                value = state_init("price", 3), step = 1),
# 	    renderPlot({
# 	      Price <- seq(0,12,.1)
# 	      b <- 10
# 	      Profit <- -b * Price^2 + 120 * Price - 200
# 	      dat <- data.frame(Price = Price, Profit = Profit)
#
# 	      p <- input$price
# 	      prof <- -b * p^2 + 120 * p - 200
#
# 	      ggplot(dat, aes(x = Price, y = Profit)) +
# 	        geom_line() +
# 	        coord_fixed(ratio = 0.015, xlim = c(0, 12), ylim = c(-200, 200)) +
# 	        geom_vline(xintercept = p, linetype = "dashed") +
# 	        geom_hline(yintercept = prof, linetype = "dotted") +
# 	        geom_point(x = p, y = prof, size = 8, color = "chocolate", alpha = 0.6) +
# 	        annotate("text", x = 14, y = 115, label = paste0("Profit: $", prof)) +
# 	        annotate("text", x = 6, y = 10, label = paste0("Profit: $", prof))
# 	    })
# 	  )
# 	})

	output$full <- renderUI({
	  inclRmd("full.Rmd")
	})
})
