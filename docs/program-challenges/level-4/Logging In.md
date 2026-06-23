# Logging In

Difficulty: Level 4

Save your file as: `Logging In.py`

## Brief

Write a program that asks a user for a unique ID. It should check the ID against a list of stored IDs.

If the ID matches one in the list, the user will be authorised and a relevant message will display.

If the ID does not match, the user will be asked to enter their ID again. They get three attempts before they are locked out.

You will need to create a list of ten unique IDs. Each ID should contain two letters and four numbers in this format:

```text
SD5545
```

Example success message:

```text
Hello user SD5545. You have been authorised.
```

Example lockout message:

```text
ID wrong. You have been locked out.
```

Each time the user enters the wrong ID, they should be told how many attempts they have left.

## Requirements

Your program should:

- store ten valid IDs in a list
- allow a maximum of three attempts
- authorise the user if the ID is found
- show how many attempts remain after each incorrect ID
- lock the user out after three failed attempts
