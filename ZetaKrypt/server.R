#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(digest)
library(PKI)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$home <- renderUI({
    str1 <- paste("ZetaKrypt is a web-based crypter for txt, png and many more types of files.")
    str2 <- paste("This crypter was built by Xeliot and 0xFireball from ZetaPhase.")
    str3 <- paste("For developers, please go to the GitHub Repo below.")
    HTML(paste(str1, str2, str3, sep='<br/>'))
  })
  
  encrypt <- eventReactive(input$encryptBtn, {
    
  })
  
  output$distPlot <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    x    <- faithful[, 2] 
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkgray', border = 'white')
    
  })
  
})
