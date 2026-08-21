# Sub-program Procedures

## Modularity

Modularity means that when a program is written it is split up into smaller chunks called sub-programs. Imagine a program with millions of lines of. This would be split up into different programming teams to complete. 

Each of the sub-programs does a specific job. For example one sub-program may be to get user information. Each of the subprograms can be used in any order and can be reused multiple times. 

!!! example
	```Python
	
	```

## Procedures in Python

### What is a procedure? 
We'll use an analogy here. Let's imagine that you're a dishwasher. Your process of washing a dish could be:

- Dip the dish into the water
- Cover every inch of the dish with soap 
- Rinse and dry the dish

So, every time you need to wash a dish, you do just that. Dip, soap, dry. Dip, soap, dry. Dip, soap, dry. Even when you go home, you dip, soap, dry. Dip, soap, dry. It's the same sequence, repeated over and over again. 

A procedure works the same way. People replace the process of dipping, soaping, and drying with the command "wash the dishes". When you call a procedure, it simply does the jobs that the procedure is supposed to do. 

By replacing a stack of instructions with one single statement, it makes code easier to read and debug. A procedure does not return a value.

In Python we give a procedure a name, this is done by giving them a name after the, “def” instruction. The brackets after the procedure name are used to pass in data that will be used in that block of code. This is known as parameter passing. 

!!! info
	A procedure literally just executes commands.
