
#!/bin/bash

# Simple Interest Calculator
# Author: azizaskar
# This script calculates simple interest.

echo "Simple Interest Calculator"

# Get user input
read -p "Enter the principal amount: " principal
read -p "Enter the annual interest rate (%): " rate
read -p "Enter the time period (years): " time

# Calculate simple interest: (P * R * T) / 100
interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN {printf "%.2f", (p * r * t) / 100}')

# Display the result
echo "Simple Interest: $interest"
