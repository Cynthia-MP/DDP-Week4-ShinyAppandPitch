#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(plotly)
library(ISLR)
library(markdown)

data(Auto, package = "ISLR")
nms <- c("mpg","cylinders","horsepower","weight","year","acceleration")


# Define UI for application that draws a histogram
shinyUI(
    
    fluidPage(
        tabsetPanel(
            tabPanel("Shiny Application", 
                     sidebarPanel(
                         sliderInput('sampleSize', 'Sample Size', min = 1, max = nrow(Auto),
                                     value = 200, step = 10, round = 0),
                         selectInput('x', 'X', choices = nms, selected = "weight"),
                         selectInput('y', 'Y', choices = nms, selected = "horsepower"),
                         selectInput('color', 'Color', choices = nms, selected = "mpg"),
                         
                         selectInput('facet_row', 'Facet Row', c(None = '.', nms), selected = "cylinders"),
                         selectInput('facet_col', 'Facet Column', c(None = '.', nms)),
                         sliderInput('plotHeight', 'Height of plot (in pixels)', 
                                     min = 100, max = 2000, value = 1000)
                     ),
                     mainPanel(
                         plotlyOutput('trendPlot', height = "900px")
                     )),
            tabPanel("ABOUT", fluidRow(column(10,includeMarkdown("README.md"))))
        )
    )
)