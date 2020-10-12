VER
HELP
REM /?

:: Comment
REM Comment

:: %PATH% - environment variable

echo %PATH%
echo First argument: %1
echo Command-line arguments: %*

echo Current dir: %CD%
echo System time: %TIME%
echo Date: %DATE%
echo Random (0-32767): %RANDOM%

echo Error level returned by the last executed command or script: %ERRORLEVEL%
echo Command Processor Extensions version: %CMDEXTVERSION%
echo Command line was used to start current cmd.exe %CMDCMDLINE%

echo "Hello & world"
:: ^ - for escape
echo Hello ^& world
echo Hello ^^ world
:: We need ^^^ for escape after | (pipe)
echo Hello | echo X ^^^^ Y

:: ^ - for escape new line
echo Multi^
line echo

:: ^ - don't escape spaces. Use "...". No: some^ file.txt
attrib "some file.txt"

echo Percents: 50%%

:: Needs two %
set /a modulo=5%%3
echo Modulo 5%%3: %modulo%

for %%i in (1, 2, 3) do echo %%i

:: Literally %PATH%
echo %%PATH%%
:: Same but from command line:
:: echo ^%PATH^%

:: FINDSRT uses "\" as escape

:: Pipes
dir | more

:: & - Do everything always in a row
echo A & echo B
:: && - Do B if A returns zero (success)
echo A && echo B
:: || - Do B if A returns non-zero (fail)
echo A && echo B
:: Parenthesized command works like one simple command
(echo A & echo B) | more

:: Redirect stderr (1 for stdin) to nowhere
dir 2> NUL

:: Overwrites
echo 3 > foo
:: Append
echo 1 >> foo
echo 2 >> foo

sort < foo

:: Redirect to handle h (0 - stdin, 1 - stdout, 2 - strerr)
:: >&h

:: Redirect from handle h
:: <&h

:: Redirect to foo with errors
dir nofile > foo 2>&1

:: To different files
dir nofile > foo 2> bar

>foo echo Redirect can be first

:: Only second
echo A & echo B > foo

:: Both
(echo A & echo B) > foo

:: Redirect console input to file (ctrl+z to stop)
:: type con > foo

::Batch reloading
