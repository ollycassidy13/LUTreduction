#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <bitset>
#include <iomanip>

// Function to convert a binary string to a hexadecimal string
std::string binToHex(const std::string& bin, int bits) {
    unsigned long long hexValue = std::bitset<64>(bin).to_ullong(); // Use 64 bits to ensure larger values are handled
    std::stringstream ss;
    ss << std::hex << std::uppercase << std::setfill('0');
    if (bits == 12) {
        ss << std::setw(3) << hexValue; // 3 characters for 12 bits
    } else if (bits == 4) {
        ss << std::setw(1) << hexValue; // 1 character for 4 bits
    }
    return ss.str();
}

int main() {
    std::string inname;
    std::string outname;

    std::cout << "Enter input file name: ";
    std::cin >> inname;
    std::cout << "Enter output file name: ";
    std::cin >> outname;
    std::ifstream inputFile(inname);
    std::ofstream outputFile("temp.txt");

    if (!inputFile.is_open()) {
        std::cerr << "Error opening input file" << std::endl;
        return 1;
    }

    if (!outputFile.is_open()) {
        std::cerr << "Error opening output file" << std::endl;
        return 1;
    }

    std::string line;
    while (std::getline(inputFile, line)) {
        std::size_t inputPos = line.find("12'b");
        std::size_t outputPos = line.find("4'b");

        // Convert and write input binary values (12 bits)
        if (inputPos != std::string::npos && (inputPos + 16 <= line.size())) {
            std::string binValue = line.substr(inputPos + 4, 12);  // Extract 12-bit binary value
            std::string hexValue = binToHex(binValue, 12);
            outputFile << hexValue;
        }

        // Convert and write output binary values (4 bits)
        if (outputPos != std::string::npos && (outputPos + 7 <= line.size())) {
            std::string binValue = line.substr(outputPos + 3, 4);  // Extract 4-bit binary value
            std::string hexValue = binToHex(binValue, 4);
            outputFile << hexValue;
        }
        outputFile << std::endl;
    }

    inputFile.close();
    outputFile.close();

    //remove blank lines
    std::ifstream tempFile("temp.txt");
    std::ofstream finalFile(outname);
    std::string hexLine;
    while (std::getline(tempFile, hexLine)) {
        if (!hexLine.empty()) {
            finalFile << hexLine << std::endl;
        }
    }

    tempFile.close();
    finalFile.close();

    std::cout << "Conversion completed successfully!" << std::endl;

    return 0;
}