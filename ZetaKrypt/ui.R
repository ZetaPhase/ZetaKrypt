#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(
  navbarPage("ZetaKrypt",
             theme="bootstrap.css",
             tabPanel(
               "Home",
               sidebarLayout(
                 tags$img(src="https://raw.githubusercontent.com/ZetaPhase/ZetaKrypt/master/ZetaKrypt/img/ZetaKrypt-logo.png", width="256", height="256"),
                 mainPanel(
                   h3(tags$p("Welcome to ZetaKrypt."))
                 )
               )
             ),
             tabPanel("Encrypt"),
             tabPanel("Decrypt"))
)
