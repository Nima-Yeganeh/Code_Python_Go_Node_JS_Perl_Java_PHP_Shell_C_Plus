#include <iostream>
#include <vector>
#include <string>

int main() {
    // Create a vector to store student names
    std::vector<std::string> studentNames;

    // Add some names to the vector
    studentNames.push_back("Alice");
    studentNames.push_back("Bob");
    studentNames.push_back("Charlie");
    studentNames.push_back("David");

    // Display the list of student names
    std::cout << "List of Student Names:" << std::endl;
    for (const auto& name : studentNames) {
        std::cout << name << std::endl;
    }

    return 0;
}

