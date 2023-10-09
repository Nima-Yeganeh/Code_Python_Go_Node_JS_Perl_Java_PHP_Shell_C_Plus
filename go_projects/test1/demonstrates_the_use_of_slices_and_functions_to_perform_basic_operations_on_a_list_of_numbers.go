package main

import "fmt"

func calculateSumAndAverage(numbers []float64) (float64, float64) {
	sum := 0.0
	for _, num := range numbers {
		sum += num
	}
	average := sum / float64(len(numbers))
	return sum, average
}

func main() {
	numbers := []float64{4.5, 2.7, 8.1, 5.3, 1.9}
	sum, average := calculateSumAndAverage(numbers)
	fmt.Printf("Numbers: %v\n", numbers)
	fmt.Printf("Sum: %.2f\n", sum)
	fmt.Printf("Average: %.2f\n", average)
}

