@echo off
setlocal enabledelayedexpansion

Rem Me is comment
Rem @ makes works command on itself
Rem "echo off" makes not to write text of command in console

echo Some text
echo Script name: %0
echo First arg: %1

Rem /A for numeric
Rem But work also as in "c"
Rem no spaces for not numeric 
set /A a = 1
set b=value
set c=5
set /A d = %a% + %a% * %c%
echo %d%

set /A globalVar = 5
set resulted=globalResulted
SETLOCAL
set /A localVar = 6
set /A resulted = %globalVar% + %localVar%
echo %resulted%
ENDLOCAL
echo %resulted%

echo %PATH%
:: Comments

set a[0]=1
set a[1]=2
set a[2]=3
echo %a[1]%

set list=1 2 3 4
for %%i in (%list%) do (
   echo %%i
)

:: (Start, Step, End)
for /l %%i in (0,1,2) do (
	echo !a[%%i]!
)

set array[0]=1
set array[1]=2
set array[2]=3
set array[3]=4
set "x=0"

:LenLoop

if defined array[%x%] (
   call echo %%array[%x%]%%
   set /A "x+=1"
   GOTO :LenLoop
)
echo length is %x%

:: Full args line
echo %*
echo %CD%
echo %TIME%
echo %DATE%
echo %RANDOM%
:: Error by last called program
echo %ERRORLEVEL%

