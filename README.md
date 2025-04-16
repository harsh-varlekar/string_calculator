# 🧮 String Calculator TDD Kata (Ruby + RSpec)

This project demonstrates the **String Calculator Kata** solved using **Test-Driven Development (TDD)** principles in Ruby with RSpec.

---

## 📌 Problem Statement

Create a method `add(string)` that takes a string of comma-separated numbers and returns their sum.

Supported features:
- Empty string returns 0
- A single number returns the number itself
- Handles any number of comma-separated values
- Supports newlines `\n` as a valid delimiter
- Allows custom delimiter syntax: `"//[delimiter]\n[numbers…]"`
- Raises an exception for negative numbers
- Shows **all** negative numbers in the error message

---


## 🚀 Getting Started

### 1. Clone the Repo
```bash
git clone https://github.com/your-username/string-calculator-tdd.git
cd string-calculator-tdd
```

### 2. Install Dependencies
``` bash
bundle install
```

### 3. Run the Test Suite
``` bash
bundle exec rspec
```


### ✅ Test Scenarios Covered

| Test Case                | Input          | Output                          |
|--------------------------|----------------|---------------------------------|
| Empty string             | `""`           | `0`                             |
| One number               | `"5"`          | `5`                             |
| Two numbers              | `"1,2"`        | `3`                             |
| Multiple numbers         | `"1,2,3,4"`    | `10`                            |
| Newlines as delimiters   | `"1\n2,3"`     | `6`                             |
| Custom delimiter         | `"//;\n1;2"`   | `3`                             |
| Negative number          | `"1,-2"`       | ❌ Exception: `-2`               |
| Multiple negatives       | `"1,-2,-3"`    | ❌ Exception: `-2, -3`           |