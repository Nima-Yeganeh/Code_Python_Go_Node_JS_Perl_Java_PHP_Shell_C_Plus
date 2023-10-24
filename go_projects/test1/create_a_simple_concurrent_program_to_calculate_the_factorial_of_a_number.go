package main

import (
	"fmt"
)

func factorial(n int, resultChan chan<- int) {
	result := 1
	for i := 2; i <= n; i++ {
		result *= i
	}
	resultChan <- result
}

func main() {
	resultChan := make(chan int)
	go factorial(5, resultChan)
	result := <-resultChan
	fmt.Printf("Factorial of 5 is %d\n", result)
}

