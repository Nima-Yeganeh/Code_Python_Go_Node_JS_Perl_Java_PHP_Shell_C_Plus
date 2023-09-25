package main

import "fmt"

func main() {
	// Define an array of integers.
	numbers := []int{12, 45, 6, 78, 32, 56, 89, 5}

	// Initialize max as the first element of the array.
	max := numbers[0]

	// Iterate through the array to find the maximum element.
	for _, num := range numbers {
		if num > max {
			max = num
		}
	}

	// Print the maximum element.
	fmt.Printf("The maximum element in the array is: %d\n", max)
}

