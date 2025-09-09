calculate_function <- function(x) {
  sqrt(1 - x^2)
}

importance_sampling_integral <- function(sample_size) {
  random_points <- runif(sample_size, 0, 1)
  weights <- 1 / (1 - random_points^2)
  function_values <- calculate_function(random_points)
  weighted_values <- function_values / weights
  estimated_value <- mean(weighted_values)
  return(estimated_value)
}

exact_integral <- pi / 4

sample_sizes <- c(150, 1200, 9500, 110000)
deviations <- c()

for (size in sample_sizes) {
  approximation <- importance_sampling_integral(size)
  deviation <- abs(approximation - exact_integral)
  deviations <- c(deviations, deviation)
}

result_table <- data.frame(Sample_Size = sample_sizes, Error = deviations)
print(result_table)

plot(
  x = sample_sizes,
  y = deviations,
  type = "o",
  log = "x",
  xlab = "Sample Size (log scale)",
  ylab = "Absolute Error",
  main = "Error Reduction with Importance Sampling",
  col = "darkred",
  pch = 17,
  lwd = 2
)

abline(h = 0, col = "gray", lty = 2)
grid()
