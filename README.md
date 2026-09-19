# Simple Interest Calculator

A lightweight Bash utility for computing simple interest from user-supplied
principal, annual interest rate, and time period.

---

## Table of Contents

- Overview
- Features
- Formula
- Requirements
- Installation
- Usage
- Example
- Project Structure
- Contributing
- Code of Conduct
- License
- Author

---

## Overview

Simple Interest Calculator is a command-line tool written in Bash that computes
simple interest based on three user-provided inputs:

1. Principal amount
2. Annual rate of interest
3. Time period in years

The project is intentionally minimal, with no dependencies beyond a standard
Unix-like environment, making it suitable for learning, scripting, or
embedding into larger automation workflows.

---

## Features

- Zero external dependencies (pure Bash and bc)
- Interactive prompt-based input
- Input validation for numeric values
- Precise decimal output to two places
- Clean, structured terminal output
- Cross-platform: Linux, macOS, WSL

---

## Formula

    Simple Interest = (Principal * Rate * Time) / 100

Where:

- Principal: initial amount in currency units
- Rate: annual interest rate as a percentage
- Time: duration in years

---

## Requirements

| Requirement | Version |
|-------------|---------|
| Bash        | 4.0+    |
| bc          | any     |

Install bc if missing:

    # Debian / Ubuntu
    sudo apt-get install bc

    # macOS (Homebrew)
    brew install bc

---

## Installation

Clone the repository:

    git clone https://github.com/shahrukhsanjrani125-afk/simple-interest-calculator.git
    cd simple-interest-calculator

Make the script executable:

    chmod +x simple-interest.sh

---

## Usage

Run the script:

    ./simple-interest.sh

Or via Bash explicitly:

    bash simple-interest.sh

---

## Example

    $ ./simple-interest.sh
    Enter Principal Amount               : 10000
    Enter Rate of Interest (per annum %) : 7.5
    Enter Time Period (in years)         : 3
    -----------------------------------
    Principal Amount : 10000
    Rate of Interest : 7.5%
    Time Period      : 3 years
    -----------------------------------
    Simple Interest  : 2250.00
    -----------------------------------

---

## Project Structure

    simple-interest-calculator/
    |-- README.md
    |-- LICENSE
    |-- CODE_OF_CONDUCT.md
    |-- CONTRIBUTING.md
    `-- simple-interest.sh

---

## Contributing

Contributions of all kinds are welcome: bug reports, fixes, documentation
improvements, enhancements, and ideas. Please read CONTRIBUTING.md before
submitting a pull request.

---

## Code of Conduct

This project adheres to the Contributor Covenant. By participating, you are
expected to uphold this code. See CODE_OF_CONDUCT.md for details.

---

## License

Licensed under the Apache License 2.0. See LICENSE for details.

---

## Author

Shahrukh Sanjrani
GitHub: https://github.com/shahrukhsanjrani125-afk
