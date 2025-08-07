# 🧮 Ballerina Command-Line Calculator

This is a simple, beginner-friendly **command-line calculator** built using the [Ballerina](https://ballerina.io/) programming language. It performs basic arithmetic operations (`+`, `-`, `*`, `/`) and includes robust input validation.

---

## ✅ Features

- Accepts input in the format: `number operator number` (e.g., `10 + 5`)
- Supports:
  - Addition `+`
  - Subtraction `-`
  - Multiplication `*`
  - Division `/`
- Handles:
  - Invalid number inputs
  - Unsupported operations
  - Division by zero
- Uses `regex` to split and process input cleanly
- Prints informative error messages

---

## 🧪 Sample Run

```bash
> bal run calculator.bal
Enter calculation (format: number operation number): 8 * 7
[8, *, 7]
8.0 * 7.0 = 56.0
