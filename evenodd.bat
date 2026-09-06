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