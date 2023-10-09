#include <iostream>
#include <fstream>
#include <string>

int main() {
	std::string inputFileName = "input.txt";
	std::string outputFileName = "output.txt";
	std::ifstream inputFile(inputFileName);
	if (!inputFile.is_open()) {
		std::cerr << "Error opening input file: " << inputFileName << std::endl;
		return 1;
	}

	std::ofstream outputFile(outputFileName);

	if (!outputFile.is_open()) {
		std::cerr << "Error opening output file: " << outputFileName << std::endl;
		return 1;
	}

	std::string line;
	while (std::getline(inputFile, line)) {
		outputFile << line << std::endl;
	}

	inputFile.close();
	outputFile.close();

	std::cout << "Data successfully copied from " << inputFileName << " to " << outputFileName << std::endl;

	return 0;
}

