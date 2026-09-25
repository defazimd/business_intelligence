
library(querychat)
library(shiny)
library(bslib)

ui = page_sidebar(
  title = "Midwest Airbnb Chat",
  
  theme = bs_theme(
    primary = "#2F6F73",
    base_font = font_google("Lato")
  ),
  
  sidebar = qc$sidebar(width = 350),
  
  card(
    card_header(textOutput("title")),
    DT::DTOutput("table")
  ),
  
  accordion(
    open = FALSE,
    
    accordion_panel(
      "SQL",
      verbatimTextOutput("sql")
    ),
    
    accordion_panel(
      "About",
      "Midwest Airbnb Explorer uses listing data from Inside Airbnb for Chicago (2026-07-20), Columbus (2026-07-23), and the Twin Cities (2026-07-21). Built by Mia DeFazio."
    )
  )
)

server = function(input, output, session) {
  
  vals = qc$server()
  
  output$title = renderText(
    vals$title() %||% "Explore Midwest Airbnb Listings"
  )
  
  output$table = DT::renderDT(
    vals$df(),
    options = list(pageLength = 10)
  )
  
  output$sql = renderText(
    vals$sql() %||% "SELECT * FROM listings"
  )
}

shinyApp(ui, server)