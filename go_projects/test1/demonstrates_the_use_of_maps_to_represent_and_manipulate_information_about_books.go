package main

import "fmt"

// Define a struct named Book to represent book information.
type Book struct {
	Title  string
	Author string
	Year   int
}

func main() {
	// Create a map to store information about books.
	library := make(map[string]Book)

	// Add books to the library.
	library["001"] = Book{"The Great Gatsby", "F. Scott Fitzgerald", 1925}
	library["002"] = Book{"To Kill a Mockingbird", "Harper Lee", 1960}
	library["003"] = Book{"1984", "George Orwell", 1949}

	// Display information about each book in the library.
	for key, book := range library {
		fmt.Printf("Book ID: %s\n", key)
		fmt.Printf("Title: %s\n", book.Title)
		fmt.Printf("Author: %s\n", book.Author)
		fmt.Printf("Year: %d\n\n", book.Year)
	}
}

