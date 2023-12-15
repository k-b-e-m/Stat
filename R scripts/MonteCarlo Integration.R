# Define the function
f <- function(x) log(1 + sin(x))

# Set the number of Monte Carlo samples
num_samples <- 100000

# Generate random x values between 0 and 1.5
x_values <- runif(num_samples, 0, 1.5)

# Evaluate the function at the random x values
y_values <- f(x_values)

# Estimate the integral using the Monte Carlo method
integral_estimate <- mean(y_values) * 1.5

# Display the result
cat("Monte Carlo estimate of the integral:", integral_estimate, "\n")