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

syntax
