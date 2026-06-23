# Battleships

Difficulty: Level 5

Save your file as: `Battleships.py`

## Brief

A developer wants to simulate a simple version of Battleships.

The ships are located on a one-dimensional array called `board`.

There are always three ships placed on the board:

- one carrier that has size three
- one cruiser that has size two
- one destroyer that has size one

The size of the board is always 15 squares.

The carrier, for example, might be found at locations `board[1]`, `board[2]` and `board[3]`.

A player makes a guess to see if a ship, or part of a ship, is located at a particular location. If a ship is found at the location, then the player has hit the ship at this location.

Every value in the `board` array is `0`, `1` or `2`:

- `0` indicates an empty location
- `1` indicates a ship is at this location and has not been hit
- `2` indicates a ship is at this location and has been hit

Develop a subroutine that works out how far away the game is from ending.

## Requirements

The subroutine should:

- have a sensible identifier
- take the board as a parameter
- work out and output how many hits have been made
- work out how many locations containing a ship have not been hit yet
- output `Winner` if there are no ship locations left to hit
- output `Almost there` if there are 1, 2 or 3 ship locations left to hit
