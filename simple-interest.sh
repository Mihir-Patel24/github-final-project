#!/bin/bash

echo "Simple Interest Calculator"

read -p "Enter principal amount: " p
read -p "Enter rate of interest: " r
read -p "Enter time period in years: " t

interest=$(awk -v p="$p" -v r="$r" -v t="$t" \
  'BEGIN { printf "%.2f", p*r*t/100 }')

echo "Simple Interest: $interest"
