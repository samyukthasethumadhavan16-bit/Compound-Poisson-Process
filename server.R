library(shiny)
simulate_S <- function(t, lambda, mu) {
  Nt <- rpois(1, lambda * t)
  if (Nt == 0) return(0)
  X <- rexp(Nt, rate = mu)
  return(sum(X))
}
server <- function(input, output) {
  
  observeEvent(input$run, {
    sims <- replicate(input$n, simulate_S(input$t, input$lambda, input$mu))
    
    output$histPlot <- renderPlot({
      hist(sims, main = paste("Histogram of S(t) at t =", input$t),
           xlab = "S(t)", breaks = 40)
    })
    
    output$summaryTable <- renderTable({
      data.frame(
        Mean = mean(sims),
        Variance = var(sims),
        Min = min(sims),
        Max = max(sims)
      )
    })
  })
}

