Simple Addition 1:
Critical Thought Process:
Program needs to clear screen and output prompt in center of screen. Program prompt asks for 2 integers, adds them, then outputs values below center first prompt.

Steps:
Clear screen, move cursor by manipulating values of DH and DL, and then output prompt.
First prompt asks for first integer, move value of EAX to int1.
Repeat first step, but alter DH to be lower so message doesnt write over previous, then second prompt asks for second integer, move value of EAX to int2.
Repeat first step, but alter DH to be lower so message doesnt write over previous, then calculate sum by adding int1 and int2 and output sum.
End program.

End Result:
Program will give only centered prompts. Program ask for 2 user integer values, add them, then outputs sum prompt.

Simple Addition 2:
Critical Thought Process:
Using previous program as template we need to create a loop that repeats previous prompt 3 times. Program immediately enters loop before clearing screen, outputing prompt in center of screen asking for 2 integers. Program then adds integers and outputs values below center first prompt before repeating loop until loop limit is met.

Steps:
Create loop that repeats the following steps 3 times:
⦁	Clear screen, move cursor by manipulating values of DH and DL, and then output prompt.
⦁	First prompt asks for first integer, move value of EAX to int1.
⦁	Repeat first step, but alter DH to be lower so message doesnt write over previous, then second prompt asks for second integer, move value of EAX to int2.
⦁	Repeat first step, but alter DH to be lower so message doesnt write over previous, then calculate sum by adding int1 and int2 and output sum.
⦁	Once loop limit value has been met exit loop.
End program.

End Result:
Program will give only centered prompts. Program loops 3 times asking user for 2 user integer values, adds them, then outputs sum prompt. Program will repeat 3 times before exiting.

Final Version:
Critical Thought Process:
Program still needs to be centered but this time prompt displays 2 integers and asks user for sum total. After user enters chosen answer program needs to check if correct and then output message, still centered, stating if correct or incorrect.

Steps:
Create functions for 2 randomized numbers, using the RandomRange function, with value ranges of 0-100. Alter DH and DL value of both within their individual function so as to not overwrite any info.
Call RandomNumber1 (Rand1) value and store in EAX before shifting value to int1.
Call RandomNumber2 (Rand2) value and store in EAX before shifting value to int2.
Calculate sum by adding int1 and int2.
Clear screen, move cursor by manipulating values of DH and DL, and then output prompt.
First prompt asks user to input total sum of randomized numbers shown.
Second and third prompt push Rand1 value and Rand2 value and display, one after the other, below first prompt.
User is then able to enter answer.
Program then checks validity of answer, by using je, and outputs results on screen.
End program.

End Result:
Program will output centered prompt asking user to give sum of to randomized integers, two randomized integers will be shown below message. User is then given option to enter answer. Program will then check and verify if correct or incorrect before outputting, still centerd, results back to user.
