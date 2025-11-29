# Compound Poisson Process

## Overview
This project implements a **Compound Poisson Process (CPP)**, a stochastic process widely used in **insurance, finance, and risk modeling**.  
A Compound Poisson Process models the **sum of random events occurring in a fixed time period**, where the number of events follows a Poisson distribution, and each event has a random size.

---

## Features
- Simulate a Compound Poisson Process with user-defined **rate (λ)** and **distribution of jumps**.
- Visualize the process over time using **plots**.
- Analyze **cumulative sums** and **individual events**.
- Ready-to-use R scripts: `ui.R` (user interface) and `server.R` (logic and computations).

---

## Files
- `ui.R` : Shiny UI for interacting with the Compound Poisson Process parameters and visualizations.  
- `server.R` : Server-side computations, simulations, and plotting logic.

---

# Installation
1. Install **R** (version ≥ 4.0).
2. Install required R packages:
```R
install.packages(c("shiny", "ggplot2"))

## Clone Repository
To clone this repository to your local machine, run:  
```bash
git clone https://github.com/samyukthasethumadhavan16-bit/Compound-Poisson-Process.git

## Usage
1. Run the Shiny app (`ui.R`) in RStudio.
2. Adjust the parameters:
   - **λ (lambda)**: rate of events
   - **Distribution of jumps**: size of events
3. View the simulated Compound Poisson Process plot and cumulative results.
4. You can experiment with different values of **λ** and different distributions to observe the process behavior.

## Applications
- **Insurance**: Modeling total claims over time.  
- **Finance**: Modeling aggregate losses or risk processes.  
- **Queueing Systems**: Modeling random events occurring over time.  
- **Risk Analysis**: Estimating probabilities of large cumulative events.
