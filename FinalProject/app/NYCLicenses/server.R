library(shiny)

# Define server logic required to draw a histogram
# boroughData <- c(Boro, Latitude, Longitude)
shinyServer(function(input, output, session) {

    output$nycmap <- renderLeaflet({ 
      leaflet() %>% 
        addTiles() %>% 
        setView(lng = -73.98925, lat = 40.75039, zoom = 11) %>% 
        addMarkers(lat = 40.748367, lng = -73.990044, popup = "<B>CUNY SPS</B><br>119 W 31st Street<br>New York, NY 10001") %>%
        addMarkers(data = boroughData, 
                   lat = Latitude, 
                   lng = Longitude, 
                   popup = Boro)
    })
    
    
    
    output$distPlot <- renderPlot({
      withProgress(message = 'Calculations in progress',
                   detail = 'This may take a while...', value = 0, {
                     for (i in 1:15) {
                       incProgress(1/15)
                       Sys.sleep(0.25)
                     }
                   })

      yearselect <- input$mapYear2
      
      # Histogram of licenses created by year
      freq <- data[data$Address.Borough == input$mapBoro2, ] %>% 
        mutate(year = as.numeric(format(License.Creation.Date, "%Y"))) %>%
        group_by(year) %>% 
        tally()
      
      # Basic barplot for Frequency by Boro
      p <- ggplot(data=freq, aes(x=year, y=n)) + 
        geom_bar(stat="identity", fill="#1D3A83") +
        labs(title = paste("Frequency of Licenses by Year for ", input$mapBoro2, sep="")) + 
        xlab("Year") +
        ylab("Count")
      
      p
      
     
    })

    
    
    output$yearPlot <- renderPlot({
      # Histogram of licenses created by industry for a specific year by top 10 industry
      freq2 <- data[as.numeric(format(data$License.Creation.Date, "%Y")) == input$mapYear2 & data$Address.Borough == input$mapBoro2, ] %>%
        group_by(Industry) %>%
        tally() %>%
        drop_na(Industry) %>%
        top_n(10)


      # Basic barplot for top 10 Industry licenses by Borough for the selected Year
      q <- ggplot(data=freq2, aes(x=Industry, y=n)) + 
        coord_flip() +
        geom_bar(stat="identity", fill="#E65722") +
        labs(title = paste("Top Ten Industry Licenses for the year of ", input$mapYear2, " for ", input$mapBoro2, sep="")) +
        xlab("Industry") +
        ylab("Count")
      
      q
      
      
    })
    
    
    
})


