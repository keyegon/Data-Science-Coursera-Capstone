## Capstone: Coursera Data Science
## Final Project

library(shiny)
library(markdown)

## SHINY UI
shinyUI(
  fluidPage(
    tags$head(
      tags$style(HTML(".help-block a {color: green !important;}")),
    ),
    titlePanel("Using Natural Language Programming to Predict words"),
    sidebarLayout(
      sidebarPanel(
        helpText("Please enter a word text or a sentence to preview the next word"),
        hr(),
        textInput("inputText", "ENTER THE TEXT / WORD / SENTENCE HERE",value = ""),
        hr(),
        helpText("1 - AFTER THE TEXT INPUT THE PREDICT NEXT WORD WILL BE DISPLAYED.", 
                 hr(),
                 "2 - YOU HAVE TO ENTER A PARTIALLY TEXT /SENTENCE TO SHOW THE NEXT WORD PREDICTION.",
                 hr(),
                 "3 - THE FORWARD WORD IS SHOWED AT THE PREDICT NEXT WORD TEXT BOX ON THE RIGHT SIDE"),
        hr(),
        hr()
      ),
      mainPanel(
        h2("FOLLOW THE PREDICT NEXT WORD AT THIS BOX"),
        verbatimTextOutput("prediction"),
        strong("WORD / TEXT / SENTENCE ENTERED:"),
        strong(code(textOutput('sentence1'))),
        br(),
        strong("USING SEARCH AT N-GRAMS TO SHOW NEXT WORD:"),
        strong(code(textOutput('sentence2'))),
        hr(),
        hr(),
        hr(),
        img(src = 'swiftkey_logo.jpg', height = 101, width = 498),
        hr(),
        hr(),
        img(src = 'coursera_logo.png', height = 122, width = 467),
        hr()
      )
    )
  )
)