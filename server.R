shinyServer(function(input, output) {
 outtext<-reactive({
          if(input$text1=="pikachu"){
       ("You got it!")
       } else {
         ("Sorry it was pikachu!")
     }
})
  observeEvent(input$goButton, {
    output$text1<-renderText({outtext()})
    output$pokemon<-renderImage({
      list(
        src=file.path("pikachu.jpg"),
        contentType="image/jpg"
   ) }, deleteFile = FALSE)
     })
})

 