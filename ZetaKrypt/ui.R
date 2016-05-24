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
                   h3(tags$p("Welcome to ZetaKrypt.")),
                   htmlOutput("home"),
                   h3(tags$p("Links")),
                   tags$br(),
                   tags$a(href="https://github.com/ZetaPhase/ZetaKrypt", "Visit the GitHub Repo"),
                   tags$br(),
                   tags$a(href="https://zetaphase.io/", "Visit our main site page")
                 )
               )
             ),
             tabPanel(
               "Encrypt",
               tags$textarea(id="InEncrypt", rows=18, cols=55, "Decrypted Text"),
               tags$textarea(id="OutEncrypt", rows=18, cols=55, "Encrypted Text"),
               textInput("encryptKey", label=NULL, value="", width="200px", placeholder="Encryption key")
             ),
             tabPanel(
               "Decrypt",
               tags$textarea(id="InDecrypt", rows=18, cols=55, "Encrypted Text"),
               tags$textarea(id="OutDecrypt", rows=18, cols=55, "Decrypted Text")
             )
))
