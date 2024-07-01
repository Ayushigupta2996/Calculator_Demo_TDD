### Overview
The StringCalculator class is designed to handle addition operations on a string of numbers in Ruby. It focuses on robust input handling, delimiter detection, error checking for negative numbers, and straightforward summation of valid numbers.

### Key Features
### 1. Input Handling
The StringCalculator class ensures consistent input processing by converting input into a string format. It checks for empty inputs and supports both default delimiters (, and \n) as well as custom delimiters specified by the user.

### 2. Delimiter Detection
The class detects delimiters based on the input format. If the input string starts with //, it extracts the custom delimiter specified after //. Otherwise, it defaults to using , and \n as delimiters.

## 3. Splitting and Summation
After determining the delimiter, the input string is split accordingly. Each substring representing a number is converted to an integer and then summed up to produce the final result.

### 4. Error Handling
The StringCalculator class includes error handling mechanisms. If negative numbers are found in the input string, the addition operation halts, and an exception is raised. The exception message lists the negative numbers detected, providing clear feedback to the user.

### Testing with RSpec
The StringCalculator class is thoroughly tested using the RSpec gem. The code is written based on these test cases to ensure functionality, handle edge cases, and maintain reliability in different scenarios.

### Implementation Note
The StringCalculator class is designed to process strings containing numbers. It adheres strictly to the specified conditions and handles input strings accordingly. Note that the implementation focuses on string inputs ("1,2,3") as specified in the task, and does not directly support integer inputs (123) unless converted to strings.


### Usage
To use the StringCalculator class, instantiate an object and call its methods with appropriate inputs. The class provides flexibility in handling different types of input strings, allowing for custom delimiter specifications and strict validation for negative numbers.
