# OCR Tech

Difficulty: Level 4

Save your file as: `OCR Tech.py`

## Brief

OCR Tech is an online shop that sells electronics such as TVs and game consoles.

Customers can use a discount code to reduce the price of their purchase.

Valid discount codes and their value in pounds are stored in a global two-dimensional array with the identifier `discount`.

For example:

- `discount[2][0]` holds discount code `BGF2`
- `discount[2][1]` holds the discount value `15`

A function searches through the two-dimensional array and applies the discount to the price. The price and discount code are passed in as parameters.

## Requirements

Complete the design for the algorithm by rewriting the pseudocode as Python code.

Your function should:

- accept the price and discount code as parameters
- search the two-dimensional discount array
- apply the matching discount if the code is valid
- return or output the final price
- leave the price unchanged if the code is not valid
