library(shiny)
shinyServer( 
  
  function(input, output) {
  
  bmiScore <- function(kg,cm) {
    m = cm/100 
    return(kg/m^2)}
  bmiCat <- function(bmi) {
    if (bmi < 15) {
      bmiCat = "Very severely underweight"
    } else if (bmi < 16) {
      bmiCat = "Severely underweight"
    } else if (bmi < 18.5){
      bmiCat = "Underweight"
    } else if (bmi < 25) {
      bmiCat = "Normal (healthy weight)"
    }else if (bmi <30) {
      bmiCat = "Overweight"
    }else if (bmi<35){
      bmiCat = "Obese Class I (Moderately obese)"
    }else if (bmi < 40){
      bmiCat = "Obese Class II (Severely obese)"
    } else {
      bmiCat = "Obese Class III (Very severely obese)"
    }
    
    return (bmiCat)
  }
  output$inputValue <- renderPrint({bmiScore(input$weight, input$height)})
  output$prediction <- renderPrint({bmiCat(bmiScore(input$weight, input$height))})
  }
)