dashboardPage(
  dashboardHeader(title="Testing"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Page 1", tabName = "p1"),
      menuItem("Page 2", tabName = "p2")
    )
  ),
  dashboardBody(
    tabItems(
      tabItem(
        tabName = "p1",
        uiOutput("page1")
      ),
      tabItem(
        tabName = "p2",
        uiOutput("page2")
      )
    )
  )
)

