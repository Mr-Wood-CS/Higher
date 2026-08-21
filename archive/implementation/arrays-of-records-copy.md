---
hide:
  - toc
---

# Working with Records

!!! info "What you need to know"

	You must be able to describe, exemplify and implement arrays of records 

## Explanation

In Python, an array of records is like a list of boxes, where each box holds important information about a person, place, or thing. 

Each "box" (record) has labelled parts for details, like a name, age, or ID number. 

For example, if we have three students, we can store their name, age, and registration number in three separate __boxes__.

These boxes are part of a record, and we can easily look inside each one to see or change the details. 

## Array of Records in Python (basic method)

### Part One

=== "Python"

	```python linenums="1"
		from dataclasses import dataclass
		
		@dataclass
		
		# Create a class
		class SchoolReg:
			# Create variables to hold the pupil data
		    Name : str = "" 
		    Age : int = 0
		    Reg : str = ""
		
		# Create an empty list called pupilRecord to store 3 student records
		pupilRecord = [SchoolReg() for x in range (0,3)]

		# Add the first pupils data
		for x in range(len(pupilRecord)):
			
			pupilRecord[x].Name = str(input("Enter Name: "))
			pupilRecord[x].Age = int(input("Enter Age: "))
			pupilRecord[x].Reg = str(input("Enter Reg: "))
		
		# Print the pupil data
		for x in range(len(pupilRecord)):
		    print ("Name: " , pupilRecord[x].Name , "Age: " , pupilRecord[x].Age , "Reg: " , pupilRecord[x].Reg )
	```

=== "Explanation"

	!!! info
 
		Lines 1 - 8 are covered in __Working with Records__.
 
	__Line 10 - pupilRecord = [SchoolReg() for x in range(0,3)]__
	This line creates a list called pupilRecord. A list is like a box where we can store many things. In this case, we are creating two empty student records because the range (0,3) means it will create three spots, one for pupilRecord[0], one for pupilRecord[1] and one for pupilRecord[2].
	
 	__In short, this line says:__
  
	"Make 3 empty student records using the SchoolReg class."

### Part Two

=== "Python"

	``` python linenums="1"
		from dataclasses import dataclass
		
		@dataclass
		
		class SchoolReg:
		    Name : str = ""
		    Age : int = 0
		    Reg : str = ""
		
		pupilRecord = [SchoolReg() for x in range (0,3)]
		
		pupilRecord[0].Name = "Peter"
		pupilRecord[0].Age = 17
		pupilRecord[0].Reg = "r1"

		
	```

=== "Explanation"

	__Line 12 - pupilRecord[0].Name = "Peter"__
	Here, we set the Name of the first student (pupilRecord[0]) to "Peter". Before, it was empty, but now it holds the name "Peter."
 
	__Line 13 - pupilRecord[0].Age = 17__
	Next, we set the Age of the first student (pupilRecord[0]) to 17. Before it was 0, and now it’s set to 17 years old.
 
	__Line 14 - pupilRecord[0].Reg = "r1"__
	Here, we set the registration number (Reg) for the first student to "r1". Now Peter has the registration number "r1".

### Part Three

=== "Python"

	``` python linenums="1"
		from dataclasses import dataclass
		
		@dataclass
		
		class SchoolReg:
		    Name : str = ""
		    Age : int = 0
		    Reg : str = ""
		
		pupilRecord = [SchoolReg() for x in range (0,3)]
		
		pupilRecord[0].Name = "Peter"
		pupilRecord[0].Age = 17
		pupilRecord[0].Reg = "r1"
		
		print (pupilRecord[0].Name) 
		print (pupilRecord[0].Age) 
		print (pupilRecord[0].Reg) 
	```

=== "Explanation"

	__Line 16 - print(pupilRecord[0].Name)__
	This line tells the computer to print the name of the first student in the list, which is Peter.
 
	__Line 17 - print(pupilRecord[0].Age)__
	This prints the age of the first student in the list, which is 17. 
 
	__Line 18 - print(pupilRecord[0].Reg)__
	Finally, this prints the registration number of the first student, which is "r1".


## Array of Records (efficient method)

### Part One

=== "Python"

	```python linenums="1"
	
		from dataclasses import dataclass
		
		@dataclass
		
		class SchoolReg:
		    Name : str = ""
		    Age : int = 0
		    Reg : str = ""
		
		pupilRecord = [SchoolReg() for x in range (0,3)]
		
		for x in range(len(pupilRecord)):
		   pupilRecord[x].Name = str(input("Enter Name: "))
		   pupilRecord[x].Age = int(input("Enter Age: "))
		   pupilRecord[x].Reg = str(input("Enter Reg: "))
		
		for x in range(len(pupilRecord)):
		    print ("Name: " , pupilRecord[x].Name , "Age: " , pupilRecord[x].Age , "Reg: " , pupilRecord[x].Reg )
	```

=== "Explanation"

	!!! info
 
		Lines 1 - 8 are covered in __Working with Records__.
  
	__Line 12 - for x in range(len(pupilRecord)):__
	The range(len(pupilRecord)) makes the loop go through each student one at a time (three students in this case).
	
	__Line 13 - pupilRecord[x].Name = str(input("Enter Name: "))__
	This line asks the user to type a name for each student using the input() function. Whatever the user types in is stored in the Name variable for each student in the list. For example, the first time the loop runs, it asks for the name of pupilRecord[0].
	
	__Line 14 - pupilRecord[x].Age = int(input("Enter Age: "))__
	This line asks the user to type the student's age. The input() function is used again, and the number typed is stored as the student's age. It’s converted into an integer (whole number). For example, the first time, it will store the age for pupilRecord[0].
	
	__Line 15 - pupilRecord[x].Reg = str(input("Enter Reg: "))__
	This line asks the user to type the student's registration number. The registration number is stored as a string (letters and numbers) for each student. For example, the first time, it stores the registration number for pupilRecord[0].


### Part Two

=== "Python"

	``` python linenums="1"
		from dataclasses import dataclass
		
		@dataclass
		
		class SchoolReg:
		    Name : str = ""
		    Age : int = 0
		    Reg : str = ""
		
		pupilRecord = [SchoolReg() for x in range (0,3)]
		
		for x in range(len(pupilRecord)):
		   pupilRecord[x].Name = str(input("Enter Name: "))
		   pupilRecord[x].Age = int(input("Enter Age: "))
		   pupilRecord[x].Reg = str(input("Enter Reg: "))
		
		for x in range(len(pupilRecord)):
		    print ("Name: " , pupilRecord[x].Name , "Age: " , pupilRecord[x].Age , "Reg: " , pupilRecord[x].Reg )
	```

=== "Explanation"

	__Line 17 - pupilRecord = [SchoolReg() for x in range(0,3)]__
	This is another loop that goes through each student record in the pupilRecord list only this time it’s going to print the details of every student one at a time.
	
	__Line 18 - print("Name: ", pupilRecord[x].Name, "Age: ", pupilRecord[x].Age, "Reg: ", pupilRecord[x].Reg)__
	This line prints out the name, age, and registration number for each student in the list.
	
	!!! example
	
		``` text
			Name: Peter Age: 17 Reg: r1
	  	```
### Array of Records (with Files)

### Part One

=== "Python"

	``` python linenums="1"
		from dataclasses import dataclass
		
		@dataclass
		
		class SchoolReg:
			Name : str = ""
			Age : int = 0
			Reg : str = ""
		
		pupilRecord = [SchoolReg() for x in range (0,3)]
		
		file = open("School-Reg.csv", "r")
	```

=== "Explanation"

	!!! info
 
		Lines 1 - 10 are covered in __Working with Records__.
  
	__Line 12 - file = open("School-Reg.csv", "r")__
	This line opens a file called "School-Reg.csv" in read mode so that we can read from it.

### Part Two

=== "Python"

	``` python linenums="1"	
		from dataclasses import dataclass
		
		@dataclass
		
		class SchoolReg:
		    Name : str = ""
		    Age : int = 0
		    Reg : str = ""
		
		pupilRecord = [SchoolReg() for x in range (0,3)]
		
		file = open("School-Reg.csv", "r")
		
		for i in range(len(pupilRecord)):
		    data = file.readline()
		    data = data.strip("\n")
		    data = data.split(",")
		    pupilRecord[i] = SchoolReg(data[0], int(data[1]), data[2])
	```

=== "Explanation"

	__Line 14__
	A loop that will go through each of the three student records in the pupilRecord list one by one.
	
	__Line 15 - data = file.readline()__
	This line reads one line of data from the file. Each time the loop runs, it reads the next line from the file.
	
	__Line 16 - data = data.strip("\n")__
	This removes the newline character (\n), which is an invisible character at the end of each line in a file. It's like cleaning up the data so there are no extra spaces or jumps to the next line.
	
	__Line 17 - data = data.split(",")__
	This splits the line of data at each comma. Since it's a CSV file, the data for each student is separated by commas. After splitting, we get a list of pieces of information, like the student's name, age, and registration number.
	
	For example, if the line was "Peter,17,r1", after splitting it, we would get:
	
		``` text
			data[0] = "Peter"
			data[1] = "17"
			data[2] = "r1"
		```
	__Line 19 - pupilRecord[i] = SchoolReg(data[0], int(data[1]), data[2])__
	This line takes the pieces of data from the file and creates a SchoolReg object for each student. It fills in the student's name (data[0]), age (data[1]), and registration number (data[2]). The int() function converts the age from a string to a number.

### Part Three

=== "Python"

	``` python linenums="1"	
		from dataclasses import dataclass
		import CSV
		
		@dataclass
		
		class SchoolReg:
		    Name : str = ""
		    Age : int = 0
		    Reg : str = ""
		
		pupilRecord = [SchoolReg() for x in range (0,3)]
		
		file = open("School-Reg.csv", "r")
		
		for i in range(len(pupilRecord)):
		    data = file.readline()
		    data = data.strip("\n")
		    data = data.split(",")
		    pupilRecord[i] = SchoolReg(data[0], int(data[1]), data[2])
		
		for x in range(len(pupilRecord)):
		    print ("Name: " , pupilRecord[x].Name , "Age: " , pupilRecord[x].Age , "Reg: " , pupilRecord[x].Reg )
		    
		file.close()
	```

=== "Explanation"

	__Line 21 - for x in range(len(pupilRecord)):__
	This is another loop. This time, it goes through each student's record in the list and prints out their information.
 
	__Line 22 - print("Name: ", pupilRecord[x].Name, "Age: ", pupilRecord[x].Age, "Reg: ", pupilRecord[x].Reg)__
	This line prints out the student's name, age, and registration number. 
	
	__Line 23 - file.close()__
	This line closes the file after we are finished reading from it.
