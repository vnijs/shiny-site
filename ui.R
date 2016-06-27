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

sidebar <-
  sidebarMenu(
    menuItem("Page 1",tabName = "page1"),
    menuItem("Page 2",tabName = "page2"),
    menuItem("Page 3",tabName = "page3")
  )

body <-
  tabItems(
    tabItem(tabName = "page1", uiOutput("page1")),
    tabItem(tabName = "page2", uiOutput("page2")),
    tabItem(tabName = "page3", uiOutput("page3"))
  )

dashboardPage(
    dashboardHeader(title = "Title"),
    dashboardSidebar(
      sidebar
    ),
    dashboardBody(
      body
    ),
    getdeps()
)

