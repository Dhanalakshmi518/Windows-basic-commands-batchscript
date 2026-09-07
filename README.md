# Windows-basic-commands-batchscript
Ex08-Windows-basic-commands-batchscript

# AIM:
To execute Windows basic commands and batch scripting

# DESIGN STEPS:

### Step 1:

Navigate to any Windows environment installed on the system or installed inside a virtual environment like virtual box/vmware 

### Step 2:

Write the Windows commands / batch file . Save each script in a file with a .bat extension. Ensure you have the necessary permissions to perform the operations. Adapt paths as needed based on your system configuration.
### Step 3:

Execute the necessary commands/batch file for the desired output. 




# WINDOWS COMMANDS:
## Exercise 1: Basic Directory and File Operations
Create a directory named "my-folder"
<img width="850" height="235" alt="Screenshot 2026-09-06 104905" src="https://github.com/user-attachments/assets/248a9a69-77f9-4bc2-8136-66062071cbe6" />

## COMMAND AND OUTPUT

Remove the directory "my-folder"
<img width="900" height="278" alt="Screenshot 2026-09-06 104943" src="https://github.com/user-attachments/assets/24891c6f-ca80-4bed-9e94-2c4b82273a7b" />

## COMMAND AND OUTPUT


Create the file Rose.txt
<img width="876" height="383" alt="Screenshot 2026-09-06 110549" src="https://github.com/user-attachments/assets/282b3977-158f-42ae-b555-53d867dcccd2" />

## COMMAND AND OUTPUT


Create the file hello.txt using echo and redirection
<img width="955" height="215" alt="Screenshot 2026-09-06 110712" src="https://github.com/user-attachments/assets/f38750ac-312d-4fbb-95bd-cad78d4ddb25" />

## COMMAND AND OUTPUT

Copy the file hello.txt into the file hello1.txt
<img width="875" height="217" alt="Screenshot 2026-09-06 110746" src="https://github.com/user-attachments/assets/6a3cf721-bd14-4d1f-89e9-bf890d3f2d57" />

## COMMAND AND OUTPUT

Remove the file hello1.txt
<img width="875" height="217" alt="Screenshot 2026-09-06 110746" src="https://github.com/user-attachments/assets/1035b213-1d35-440d-b13f-66608b4382d0" />

## COMMAND AND OUTPUT

List out the file hello1.txt in the current directory
<img width="761" height="902" alt="Screenshot 2026-09-06 110845" src="https://github.com/user-attachments/assets/79b0ad62-62e5-41fa-ae10-a7b35bbda33d" />

## COMMAND AND OUTPUT

List out all the associated file extensions 
<img width="767" height="821" alt="Screenshot 2026-09-06 111036" src="https://github.com/user-attachments/assets/6fd17ce3-d0f1-411c-9a34-12b0850ae129" />

## COMMAND AND OUTPUT


Compare the file hello.txt and rose.txt
<img width="945" height="276" alt="Screenshot 2026-09-06 111321" src="https://github.com/user-attachments/assets/0e382c47-5499-4624-a908-9596e76c9b98" />


## COMMAND AND OUTPUT

## Exercise 2: Advanced Batch Scripting
Create a batch file named on the desktop. The batch file need to have a variable assigned with a desired name for ex. name="John" and display as "Hello, John".


```
@echo off
set name=John
echo Hello, %name%
pause
```


## OUTPUT

<img width="823" height="103" alt="Screenshot 2026-09-06 111701" src="https://github.com/user-attachments/assets/6c05af10-2fe3-4f3f-bf02-77f37c15d93e" />


Create a batch file  on the desktop that checks whether a user-input number is odd or not. The script should:
Prompt the user to enter a number.
Calculate the remainder when the number is divided by 2.
Display whether the number is odd or not.
Ask the user if they want to check another number.
Repeat the process if the user enters Y, and exit with a thank-you message if the user enters N.
Handle invalid inputs for the continuation prompt (Y/N) gracefully.
```
@echo off

:START

set /p num=Enter a number: 

set /a rem=%num% %% 2

if %rem%==0 (
    echo The number is Even
) else (
    echo The number is Odd
)

set /p choice=Do you want to continue (Y/N)? 

if /I "%choice%"=="Y" goto START
if /I "%choice%"=="N" goto END

echo Invalid Input
goto START

:END
echo Thank You
pause

```


## OUTPUT

<img width="920" height="235" alt="Screenshot 2026-09-06 111904" src="https://github.com/user-attachments/assets/3884b7e7-268b-43ab-8bf7-20ee144e74ad" />



Write a batch file that uses a FOR loop to iterate over a sequence of numbers (1 to 5) and displays each number with the label Number:. The output should pause at the end.

```
@echo off

for /L %%i in (1,1,5) do (
    echo Number: %%i
)

pause
```


## OUTPUT


<img width="877" height="205" alt="Screenshot 2026-09-06 112014" src="https://github.com/user-attachments/assets/13661c60-a1d2-4290-bdf8-b58659263667" />


Write a batch script to check whether a file named sample.txt exists in the current directory. If the file exists, display the message sample.txt exists. Otherwise, display sample.txt does not exist. Pause the script at the end to view the result.

Instructions:
Use the IF EXIST conditional statement.
Make sure the script works for files located in the same directory as the batch file.
Use pause to keep the command window open after displaying the message.
Expected Output (if the file exists):
```
@echo off

if exist sample.txt (
    echo sample.txt exists
) else (
    echo sample.txt does not exist
)

pause
```
## OUTPUT
<img width="872" height="110" alt="Screenshot 2026-09-06 112050" src="https://github.com/user-attachments/assets/9e144503-2532-4d5c-a4b4-76e561eeeda4" />


Write a batch script that displays a simple menu with three options:
Say Hello – Displays the message Hello, World!
Create a File – Creates a file named newfile.txt with the content This is a new file
Exit – Exits the script with a goodbye message
The script should repeatedly display the menu until the user chooses to exit. Use goto statements to handle menu navigation.
```
@echo off

:MENU
echo ====================
echo 1. Say Hello
echo 2. Create a File
echo 3. Exit
echo ====================

set /p choice=Enter your choice: 

if %choice%==1 goto HELLO
if %choice%==2 goto CREATE
if %choice%==3 goto EXIT

echo Invalid Choice
goto MENU

:HELLO
echo Hello, World!
pause
goto MENU

:CREATE
echo This is a new file > newfile.txt
echo File Created
pause
goto MENU

:EXIT
echo Goodbye
pause
exit
```

## OUTPUT
<img width="798" height="652" alt="Screenshot 2026-09-06 112150" src="https://github.com/user-attachments/assets/e26494f4-3a05-43b6-909a-532c23d655f7" />



# RESULT:
The commands/batch files are executed successfully.


TEST LINE
