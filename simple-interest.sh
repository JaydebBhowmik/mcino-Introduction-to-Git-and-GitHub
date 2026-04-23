#!/bin/bash

echo "==============================="
echo " Simple Interest Calculator"
echo "==============================="

# Input
read -p "Enter Principal Amount: " principal
read -p "Enter Rate of Interest (%): " rate
read -p "Enter Time (years): " time

# Validation
if [[ -z "$principal" || -z "$rate" || -z "$time" ]]; then
    echo "Error: All fields are required!"
    exit 1
fi

# Calculation
simple_interest=$((principal * rate * time / 100))

# Output
echo "-------------------------------"
echo "Simple Interest = $simple_interest"
echo "-------------------------------"
