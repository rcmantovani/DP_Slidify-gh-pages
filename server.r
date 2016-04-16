library(quantmod)

shinyServer(function(input, output) {
  output$plot1 <- renderPlot({ 
    getSymbols("IBM", from=Sys.Date()-input$n, to=Sys.Date(), auto.assign=TRUE)
    IBM.returns <- diff(log(IBM$IBM.Adjusted))
    chartSeries(IBM.returns , theme="white", type="candlesticks",  
    TA=c(addVo(),addBBands()) )})
  })
