library(shiny)
shinyUI(verticalLayout(
 tags$head(
   tags$style("h1{
              color: blue;}
              #text1{color: green; font-size: 20px;")
 ),
  sidebarLayout(
    sidebarPanel(
      h1("Can you unscramble this word?"),
      h2("kupchia"),
      textInput(inputId="text1", label = "Answer"),
      actionButton("goButton", "Submit"),
      textOutput('text1')
      ),
    mainPanel(
    imageOutput('pokemon'))
  )
   ))

