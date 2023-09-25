package main

import "fmt"

// This is a function that calculates the factorial of a given non-negative integer.
func factorial(n int) int {
	if n <= 1 {
		return 1
	}
	return n * factorial(n-1)
}

func main() {
	// Calculate the factorial of 5.
	result := factorial(5)
	fmt.Printf("Factorial of 5 is %d\n", result)
}

