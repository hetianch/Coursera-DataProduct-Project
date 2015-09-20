library(shiny) 

shinyUI( pageWithSidebar(
  # Application title 
  headerPanel("BMI calculator"),
  sidebarPanel(
    numericInput('height', 'height cm', 162, min =130 , max = 250, step = 1), 
    numericInput('weight', 'weight kg', 50, min =30 , max = 200, step = 1), 
    submitButton('Submit')
  ), mainPanel(
    h3('Results:'),
    h4('You BMI score is'), verbatimTextOutput("inputValue"), h4('You fall in the category of'), verbatimTextOutput("prediction")
  ) ))
  