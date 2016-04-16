
shinyUI(fluidPage(
  titlePanel("IBM Shares Returns"),
  fluidRow(
    column(3, wellPanel(
      sliderInput("n", "Number of days:", min = 30, max = 1000, value = 360, step = 10),
      submitButton("Update!")
    )),
    column(6, plotOutput("plot1", width = 600, height = 400)
    )
  )
))
