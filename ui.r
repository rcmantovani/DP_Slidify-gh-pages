
shinyUI(fluidPage(
  titlePanel("IBM Shares Returns and Volatility Analysis"),
  fluidRow(
    column(3, wellPanel(
      sliderInput("n", "Range in days:", min = 30, max = 1000, value = 360, step = 10),
      submitButton("Update!"),
      helpText(" "),
      helpText("Wait for the graph to appear. Change days as you like and hit update."),
      helpText("Notes: "),
      helpText("The green line refers to the daily change in decimal points (gain/loss)."),
      helpText("The bands (gray/red) identifies the volatility of the asset.")
    )),
    column(6, plotOutput("plot1", width = 600, height = 425)
    )
  )
))
