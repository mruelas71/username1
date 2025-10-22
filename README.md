# README for Username Validation Script

## Author Information
- **Name:** Moises Ruelas
- **Course:** CPSC 298
- **Assignment:** Username Validation
- **Date:** 10/21/2025

## Program Description
[This program asks the user to enter a username. Once the user inputs something the program will then see what the user input is and validate if it reaches the right requirements or not.]

## Username Requirements
This script validates usernames according to the following rules:
- Must start with a lowercase letter
- Can only contain lowercase letters, digits, and underscores
- Must be between 3 and 12 characters in length (inclusive)

## Usage
To run the script interactively:
```bash
./username.sh
```

To test with the provided input file:
```bash
./username.sh < username-input
```

## How the Script Works
[Explain in 3-5 sentences how your script validates usernames. Include information about:]
The script uses a `while` loop to go through each username one by one and check if it’s valid. It uses the `grep` command with the `-E` option for extended regular expressions to match usernames with the right pattern, while the `-v` flag helps find ones that don’t fit. The part `> /dev/null 2>&1` just hides any extra messages or errors so the results look clean.
- The use of the `while` loop
- The `grep` command with extended regular expressions
- The meaning of the `-E` and `-v` flags
- The redirect `> /dev/null 2>&1`

## Regular Expression Pattern
The validation uses the following regular expression pattern:
```
^[a-z][a-z0-9_]{2,11}$
```
This pattern ensures that:
- The username starts with a lowercase letter `[a-z]`
- The following characters are lowercase letters, digits, or underscores `[a-z0-9_]`
- The total length is between 3 and 12 characters

## Testing Results
[Describe your testing process and results. Include:]
- Example valid usernames you tested (at least two)
Usernames that worked: jsmith_2023, dev_user, test123
- Example invalid usernames and why they fail (at least two)
Usernames that did not work: a, test-user, jsmith!
- How you used the username-input file to test
The first two passed the test because they had the required lowercase letters while the other usernames didn't.

## Challenges and Solutions
[Optional: Describe any challenges you encountered while creating this script and how you solved them. This could include debugging issues, understanding regular expressions, or Git workflow problems.]

## Resources
[List any resources you used (class slides, ChatGPT, etc.). Please refer to the course syllabus for more details on citations.]

## License
This project is part of coursework for Chapman University and is intended for educational purposes.
