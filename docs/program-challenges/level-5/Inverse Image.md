# Inverse Image

Difficulty: Level 5

Save your file as: `Inverse Image.py`

## Brief

A black and white image can be represented as a two-dimensional array where:

- `0` represents a white pixel
- `1` represents a black pixel

Two images are exact inverses of each other if:

- every white pixel in the first image is black in the second image
- every black pixel in the first image is white in the second image

A developer has started to create an algorithm that compares two 3 x 3 black and white images, `image1` and `image2`, to see if they are exact inverses of each other.

Complete the algorithm so that, when it ends, the value of the variable `inverse` is `True` if the two images are inverses of each other, or `False` if they are not.

The algorithm should work for any 3 x 3 black and white images stored in `image1` and `image2`.

Indexing starts at zero.

## Requirements

Your solution should:

- compare every position in the two 3 x 3 arrays
- check that each pair of pixels is opposite
- set `inverse` to `False` if any pair is not opposite
- leave `inverse` as `True` only when every pair matches the inverse rule
