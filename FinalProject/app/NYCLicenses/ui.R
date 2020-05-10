library(shiny)

navbarPage( 
  title = div(
    div(
      style="padding: 0px 25x;",
      id = "img-id",
      img(src = "https://sps.cuny.edu/sites/all/themes/cuny/assets/img/header_logo.png", height="45%", width="45%", align="left")
    ),
    div(
      style="text-align: right;",
      "NYC License Data"
    )
  ), 

           tabPanel("Map", inputId = 'mapViewTab',
                    div(class='outer',
                        leafletOutput('nycmap', width = '100%', height = '600')
                    ),
                    
                    # Panel options: 
                    absolutePanel(id = "controls", class = "panel panel-default", fixed = TRUE,
                                  draggable = TRUE, top = 60, left = "auto", right = 20, bottom = "auto",
                                  width = 330, height = "auto",
                                  
                                  fluidRow(
                                      column(6,
                                             selectInput(inputId = 'mapYear',
                                                         label = h4('Year'),
                                                         choices = Year,
                                                         selected = 2020)),
                                      column(6,
                                             selectInput(inputId = 'mapBoro',
                                                         label = h4('Borough'),
                                                         choices = Boro,
                                                         selected = 'Brooklyn'))
                                  )
                                  
                    )
                    
           ),
           
           tabPanel("Comparison", inputId = 'comparisonViewTab',
                    
                    sidebarLayout(
                      sidebarPanel(

                          selectInput('mapBoro2',
                                      'Borough',
                                       Boro,
                                      selected = 'Brooklyn'),
                          
                          selectInput(inputId = 'mapYear2',
                                      label = h4('Year'),
                                      choices = Year,
                                      selected = 2020)
                          

                          
                      ),

                      
                      
                      # Show a plot of the generated distribution
                      mainPanel(
                        plotOutput("distPlot"),
                        plotOutput("yearPlot")
                      )
                    )
            )
           
           
           
)