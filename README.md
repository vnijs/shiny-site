# Shiny-site

Dynamic rmarkdown files are great for one page apps. However, if you have multiple pages/tabs you may prefer to use Shiny with `navbarPage`. This is a proof of concept that you can render rmarkdown files using Knitr within a shiny app without having to break up the file into parts. It works by using Shiny's `renderUI` functionality and evaluating the rmarkdown file in the shinyServer environment.

See discussion on Shiny's GitHub page for background: https://github.com/rstudio/shiny/issues/859

I use this approach in a Shiny app that generates interactive quizzes: https://github.com/vnijs/quizr. More generally, it can be used to create multi-page websites that contain text and interactive elements using Shiny and Knitr.

## Alternatives

If you prefer `shinydashboard` there is a minimal working example in the `dashboard` branch of this github repository by <a href="https://github.com/1beb" target="_blank">Brandon Bertelsen</a>

## Example

To see this example live go to: https://vnijs.shinyapps.io/shiny-site/
