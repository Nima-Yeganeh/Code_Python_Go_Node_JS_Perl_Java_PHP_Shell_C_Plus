package main

import "fmt"

// Define a struct named Person.
type Person struct {
	Name    string
	Age     int
	Country string
}

func main() {
	// Create an instance of the Person struct.
	person1 := Person{
		Name:    "John Doe",
		Age:     30,
		Country: "USA",
	}

	// Access and print the fields of the struct.
	fmt.Printf("Name: %s\n", person1.Name)
	fmt.Printf("Age: %d\n", person1.Age)
	fmt.Printf("Country: %s\n", person1.Country)

	// Create another instance of the Person struct using the zero-value initialization.
	var person2 Person

	// Assign values to the fields.
	person2.Name = "Jane Doe"
	person2.Age = 25
	person2.Country = "Canada"

	// Print the details of the second person.
	fmt.Printf("\nName: %s\n", person2.Name)
	fmt.Printf("Age: %d\n", person2.Age)
	fmt.Printf("Country: %s\n", person2.Country)
}

