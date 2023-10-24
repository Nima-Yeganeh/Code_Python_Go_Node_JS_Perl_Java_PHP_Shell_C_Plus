#include <iostream>
#include <vector>

// Base class
class Shape {
public:
    virtual double calculateArea() const = 0; // Pure virtual function makes Shape an abstract class
    virtual ~Shape() {} // Virtual destructor for proper cleanup in derived classes
};

// Derived class: Circle
class Circle : public Shape {
private:
    double radius;

public:
    Circle(double r) : radius(r) {}

    double calculateArea() const override {
        return 3.14159 * radius * radius;
    }
};

// Derived class: Rectangle
class Rectangle : public Shape {
private:
    double width;
    double height;

public:
    Rectangle(double w, double h) : width(w), height(h) {}

    double calculateArea() const override {
        return width * height;
    }
};

int main() {
    // Create instances of Circle and Rectangle
    Circle circle(5.0);
    Rectangle rectangle(4.0, 6.0);

    // Create a vector of pointers to Shape
    std::vector<Shape*> shapes;
    shapes.push_back(&circle);
    shapes.push_back(&rectangle);

    // Calculate and display the area of each shape using polymorphism
    for (const auto& shape : shapes) {
        std::cout << "Area: " << shape->calculateArea() << std::endl;
    }

    // Note: It's important to properly manage the memory for the dynamically allocated objects in a real-world scenario.

    return 0;
}
