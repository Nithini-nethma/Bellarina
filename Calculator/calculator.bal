import ballerina/io;
import ballerina/regex;

public function main() {

    // Ask the user to enter a calculation (e.g., 10 + 5)
    io:print("Enter calculation (format: number operation number): ");

    // Read input from user
    string input = io:readln();

    // Remove spaces from both ends and split input into parts (by space)
    string[] parts = regex:split(input.trim(), " ");

    // Print the split parts (for debugging or learning)
    io:println(parts);

    // Check if there are exactly 3 parts: number, operation, number
    if parts.length() != 3 {
        io:println("Error: Please enter exactly 3 values separated by spaces");
        return; // Exit the program
    }

    // Assign each part to a variable
    string num1Result = parts[0];       // First number as a string
    string operations = parts[1];       // Operation: +, -, *, or /
    string num2Result = parts[2];       // Second number as a string

    // Try converting both numbers from string to float
    float|error num1 = float:fromString(num1Result);
    float|error num2 = float:fromString(num2Result);

    // Check if the first number is invalid
    if num1 is error {
        io:println("Error: Invalid first number");
        return;
    }

    // Check if the second number is invalid
    if num2 is error {
        io:println("Error: Invalid second number");
        return;
    }

    // Declare the result variable
    float result = 0.0;

    // Perform the calculation based on the operation
    match operations {
        "+" => {
            result = num1 + num2;
        }
        "-" => {
            result = num1 - num2;
        }
        "*" => {
            result = num1 * num2;
        }
        "/" => {
            // Prevent division by zero
            if num2 == 0.0 {
                io:println("Error: Division by zero");
                return;
            }
            result = num1 / num2;
        }
        // If operation is not recognized
        _ => {
            io:println("Error: Invalid operation. Use +, -, *, or / only.");
            return;
        }
    }

    // Print the final calculation result
    io:println("${num1} ${operations} ${num2} = ${result}");
}
