# SimulationProject_1
# Monte Carlo and Importance Sampling project in R

**Author:** Zohreh Sarmeli Saeedi  
**Course Project:** Computer Simulation

## Overview
This project estimates the integral:

∫₀¹ √(1 - x²) dx

using two methods:

1. **Monte Carlo Method**
2. **Importance Sampling Method**

The true value of the integral is π/4.

## File Structure
- `MonteCarlo.R` → Monte Carlo implementation
- `ImportanceSampling.R` → Importance Sampling implementation
- `plots/` → Error convergence plots

## How to Run
1. Install R (and RStudio if desired)
2. Open the `.R` script of your choice
3. Run the script to see results and plots

## Notes
- Monte Carlo error decreases as O(1/√n)
- Importance Sampling generally provides faster error reduction
