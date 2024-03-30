#!/bin/bash

# Array of jokes
jokes=("Why don't scientists trust atoms? Because they make up everything!"
    "Parallel lines have so much in common. It's a shame they'll never meet."
    "Why don't skeletons fight each other? They don't have the guts.")
    
# Get the number of jokes in the array
num_jokes=${#jokes[@]}

# Generate a random index to select a joke
random_index=$(( RANDOM % num_jokes ))

# Display the random joke
echo "Random Joke:"
echo "${jokes[$random_index]}"
