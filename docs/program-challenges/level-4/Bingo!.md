# Bingo!

Difficulty: Level 4

Save your file as: `Bingo!.py`

## Brief

A program is being written to simulate a computer science revision game in the style of bingo.

At the beginning of the game, a bingo ticket is generated with nine different key terms from computer science in a 3 x 3 grid.

Example bingo ticket:

|  |  |  |
| --- | --- | --- |
| CPU | ALU | Pixel |
| NOT gate | Binary | LAN |
| Register | Cache | Protocol |

The player will be prompted to answer a series of questions. If an answer matches a key term on the player's bingo ticket, the key term will be marked off automatically.

The program uses a two-dimensional array called `ticket` to represent a bingo ticket.

The program also uses a subroutine called `generateKeyTerm`. When called, this subroutine returns a random key term, for example `CPU`, `ALU` or `NOT gate`.

## Requirements

Complete the Python program by filling in the five gaps.

Your solution should:

- use the two-dimensional `ticket` array
- call `generateKeyTerm` when a random key term is needed
- avoid duplicate terms where possible
- create a complete 3 x 3 bingo ticket
