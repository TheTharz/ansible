#!/bin/bash

# Function to print a horizontal line pattern
print_horizontal_line() {
    local length=$1
    for (( i=0; i<length; i++ )); do
        echo -n "*"
    done
    echo
}

# Function to print a vertical line pattern
print_vertical_line() {
    local height=$1
    for (( i=0; i<height; i++ )); do
        echo "*"
    done
}

# Function to print a square pattern
print_square() {
    local size=$1
    for (( i=0; i<size; i++ )); do
        print_horizontal_line $size
    done
}

# Function to print a right triangle pattern
print_right_triangle() {
    local height=$1
    for (( i=1; i<=height; i++ )); do
        print_horizontal_line $i
    done
}

# Function to print an inverted right triangle pattern
print_inverted_right_triangle() {
    local height=$1
    for (( i=height; i>=1; i-- )); do
        print_horizontal_line $i
    done
}

# Main script
echo "Printing Patterns"
echo

echo "Horizontal Line:"
print_horizontal_line 10
echo

echo "Vertical Line:"
print_vertical_line 5
echo

echo "Square:"
print_square 5
echo

echo "Right Triangle:"
print_right_triangle 5
ech
