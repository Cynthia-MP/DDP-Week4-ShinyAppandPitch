#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(plotly)
library(ISLR)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    #add reactive data information. Dataset = built in stars data
    dataset <- reactive({
        Auto[sample(nrow(Auto), input$sampleSize),]
    })
    
    output$trendPlot <- renderPlotly({
        
        # build graph with ggplot syntax
        p <- ggplot(dataset(), aes_string(x = input$x, y = input$y, color = input$color)) + 
            geom_point()
        
        # if at least one facet column/row is specified, add it
        facets <- paste(input$facet_row, '~', input$facet_col)
        if (facets != '. ~ .') p <- p + facet_grid(facets)
        
        ggplotly(p) %>% 
            layout(height = input$plotHeight, autosize=TRUE)
        
    })
    
})
