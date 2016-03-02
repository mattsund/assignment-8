library(shiny)
library(dplyr)
library(plotly)
shinyUI(fluidPage(
  # Title
  titlePanel('Graph of Flowers'),
  # Declare a sidebar layout
  sidebarLayout(
    # Put sidebar elements in here (i.e., widgets)
         sidebarPanel(h2("Sidebar"), 
             # User Chooses the x-axis variable
             selectInput("xaxis", label = h3("Choose the x-axis"), 
                  choices = 
                    list("Sepal Length" = "Sepal.Length", "Sepal Width" = "Sepal.Width", 
                         "Petal Length" = "Petal.Length", "Petal Width" = "Petal.Width"), 
                  selected = "Sepal.Width"),
             # User chooses the y-axis variable
             selectInput("yaxis", label = h3("Choose the y-axis"), 
                  choices = 
                     list("Sepal Length" = "Sepal.Length", "Sepal Width" = "Sepal.Width", 
                          "Petal Length" = "Petal.Length", "Petal Width" = "Petal.Width"), 
                     selected = "Sepal.Length")
         ),
    # Put main stuff in here (i.e., plots)
    mainPanel(h1("Graph"), 
              plotlyOutput('graph')
    )
  )
))