# Parallel Arrays: Answers and Programs

These are example solutions. Other programs are valid if they meet the task
requirements and preserve the relationships between corresponding elements.
Each code block is a complete program that can be run independently.

## Task 1: Club Attendance

### (a) Example program

```python
member_names = ["Aisha", "Ben", "Cara", "Dylan"]
sessions_attended = [6, 3, 5, 0]

print("All members")
for index in range(len(member_names)):
    print(member_names[index], ":", sessions_attended[index], "sessions")

print("\nAt least five sessions")
for index in range(len(member_names)):
    if sessions_attended[index] >= 5:
        print(member_names[index], ":", sessions_attended[index], "sessions")
```

### Expected output

```text
All members
Aisha : 6 sessions
Ben : 3 sessions
Cara : 5 sessions
Dylan : 0 sessions

At least five sessions
Aisha : 6 sessions
Cara : 5 sessions
```

### (b) Written answer

`member_names[0]` is Aisha, but `sessions_attended[1]` is Ben's attendance
figure, 3. Combining them incorrectly reports that Aisha attended 3 sessions
instead of 6. Both accesses are valid, so Python does not raise an error;
the error is in the relationship between the values.

The condition uses `>= 5`, so Cara's attendance of exactly 5 is included.
Dylan's 0 is displayed in the full list but excluded from the filtered list.

## Task 2: Sponsored Walk

As specified in the task, this version assumes a valid correction index and
non-negative whole-number distances.

### (a) Example program

```python
pupil_names = []
distances_km = []

for index in range(3):
    name = input("Enter pupil name: ")
    distance = int(input("Enter distance in whole kilometres: "))
    pupil_names.append(name)
    distances_km.append(distance)

print("Original distances")
for index in range(len(pupil_names)):
    print(index, ":", pupil_names[index], "-", distances_km[index], "km")

correction_index = int(input("Enter the pupil index to correct: "))
replacement_distance = int(input("Enter the replacement distance: "))
distances_km[correction_index] = replacement_distance

print("Corrected distances")
for index in range(len(pupil_names)):
    print(index, ":", pupil_names[index], "-", distances_km[index], "km")
```

### Test results

Start each test with Erin: 4 km, Finn: 7 km and Grace: 5 km.

| Correction index | Replacement | Final distances in pupil order |
|---:|---:|---|
| 1 | 9 | Erin: 4 km; Finn: 9 km; Grace: 5 km |
| 0 | 0 | Erin: 0 km; Finn: 7 km; Grace: 5 km |
| 2 | 8 | Erin: 4 km; Finn: 7 km; Grace: 8 km |

For the first test, the final display is:

```text
Corrected distances
0 : Erin - 4 km
1 : Finn - 9 km
2 : Grace - 5 km
```

### (b) Written answer

Correcting a distance changes one value for an existing pupil. The pupil's
name and index stay the same, so only `distances_km[correction_index]` changes.
Adding a pupil creates a new pair of related values: both their name and
distance must be appended so they occupy the same new index.

Initialising the lists inside the input loop would discard previous pupils.
`int()` is needed because `input()` returns text, while distances and the
correction index are used as integers.

## Task 3: Equipment Loans

The display sub-program receives all three arrays as parameters. Availability
is calculated for each item; there is no separate array of hard-coded results.
The program displays the original equipment, appends the projector, and then
displays all five items to demonstrate the addition test.

### (a) Example program

```python
def display_equipment(equipment_names, total_owned, on_loan):
    for index in range(len(equipment_names)):
        available = total_owned[index] - on_loan[index]
        if available == 0 :
            print(equipment_names[index], ":", available, "available - None available")
        else:
            print(equipment_names[index], ":", available, "available")


equipment_names = ["Laptop", "Camera", "Microphone", "Tripod"]
total_owned = [12, 5, 8, 4]
on_loan = [9, 5, 2, 0]

print("Original equipment")
display_equipment(equipment_names, total_owned, on_loan)

equipment_names.append("Projector")
total_owned.append(3)
on_loan.append(1)

print("\nAfter adding the projector")
display_equipment(equipment_names, total_owned, on_loan)
```

### Expected output

```text
Original equipment
Laptop : 3 available
Camera : 0 available - None available
Microphone : 6 available
Tripod : 4 available

After adding the projector
Laptop : 3 available
Camera : 0 available - None available
Microphone : 6 available
Tripod : 4 available
Projector : 2 available
```

The calculations are `12 - 9 = 3`, `5 - 5 = 0`, `8 - 2 = 6`,
`4 - 0 = 4` and `3 - 1 = 2`. Using `len(equipment_names)` makes the
loop include the projector without manually changing its stopping value.
The other two arrays must have matching lengths and corresponding values.

## Extension 1: Check the Pupil Index

This complete version of Task 2 rejects out-of-range indexes before changing
a distance. As specified, it assumes integer input; it does not validate
non-numeric text or negative distances.

### (a) Example program

```python
pupil_names = []
distances_km = []

for index in range(3):
    name = input("Enter pupil name: ")
    distance = int(input("Enter distance in whole kilometres: "))
    pupil_names.append(name)
    distances_km.append(distance)

print("Original distances")
for index in range(len(pupil_names)):
    print(index, ":", pupil_names[index], "-", distances_km[index], "km")

correction_index = int(input("Enter the pupil index to correct: "))
while correction_index < 0 or correction_index >= len(pupil_names):
    print("Enter an index from 0 to", len(pupil_names) - 1)
    correction_index = int(input("Enter the pupil index to correct: "))

replacement_distance = int(input("Enter the replacement distance: "))
distances_km[correction_index] = replacement_distance

print("Corrected distances")
for index in range(len(pupil_names)):
    print(index, ":", pupil_names[index], "-", distances_km[index], "km")
```

### (b) Test results

With three pupils, valid indexes are `0`, `1` and `2`.

| Index entered | Expected behaviour |
|---:|---|
| -1 | Reject and request another index |
| 3 | Reject and request another index |
| 0 | Accept; the replacement changes Erin's distance |
| 2 | Accept; the replacement changes Grace's distance |

For example, enter `-1`, then `3`, then `0`, followed by replacement distance
`0`. The program rejects the first two indexes and finally changes Erin's
distance to 0 km. Finn remains at 7 km and Grace at 5 km.

The invalid conditions are joined with `or`: either a negative index or an
index at least as large as the list length must be rejected. Python normally
allows `-1` to access the final element, so an explicit lower-bound check is
necessary for this task.

## Extension 2: Remove the Camera

This complete program includes the projector addition from Task 3, then removes
the camera from all three arrays.

### (a) Example program

```python
def display_equipment(equipment_names, total_owned, on_loan):
    for index in range(len(equipment_names)):
        available = total_owned[index] - on_loan[index]
        if available == 0 :
            print(equipment_names[index], ":", available, "available - None available")
        else:
            print(equipment_names[index], ":", available, "available")


equipment_names = ["Laptop", "Camera", "Microphone", "Tripod"]
total_owned = [12, 5, 8, 4]
on_loan = [9, 5, 2, 0]

print("Original equipment")
display_equipment(equipment_names, total_owned, on_loan)

equipment_names.append("Projector")
total_owned.append(3)
on_loan.append(1)

print("\nAfter adding the projector")
display_equipment(equipment_names, total_owned, on_loan)

remove_index = 1
del equipment_names[remove_index]
del total_owned[remove_index]
del on_loan[remove_index]

print("\nAfter removing the camera")
display_equipment(equipment_names, total_owned, on_loan)
print("Array lengths:", len(equipment_names), len(total_owned), len(on_loan))
```

### Expected final output

After the two equipment displays from Task 3, the program displays:

```text
After removing the camera
Laptop : 3 available
Microphone : 6 available
Tripod : 4 available
Projector : 2 available
Array lengths: 4 4 4
```

### (b) Written answer

Deleting an element shifts the later elements in that array one position to
the left. Deleting index `1` from all three arrays removes the camera's name,
total owned and number on loan. The remaining values shift together and
continue to match.

Deleting only `equipment_names[1]` would pair Microphone with the camera's
quantities, giving 0 available instead of 6. The names array would also be
shorter than the quantity arrays. Equal lengths are necessary, but the values
must also remain in corresponding positions.
