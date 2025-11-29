library(shiny)
ui <- fluidPage(
  titlePanel("Compound Poisson Process Simulator"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("lambda", "Interarrival Rate (lambda):",
                  min = 0.1, max = 5, value = 1, step = 0.1),
      sliderInput("mu", "Claim Size Rate (mu):",
                  min = 0.1, max = 5, value = 1, step = 0.1),
      numericInput("t", "Time (t):", value = 10),
      numericInput("n", "Number of Simulations:", value = 5000),
      actionButton("run", "Run Simulation")
    ),
    
    mainPanel(
      plotOutput("histPlot"),
      tableOutput("summaryTable")
    )
  )
)
