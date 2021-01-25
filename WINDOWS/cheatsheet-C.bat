:: Good for script begin
SETLOCAL ENABLEEXTENSIONS
SET me=%~n0
SET parent=%~dp0
PUSHD "%~dp0" > NUL && SET root=%CD% && POPD > NUL
ECHO %root%

IF %ERRORLEVEL% NEQ 0 (
  REM do something
)

:: Exit by error (non-zero)
:: DoSomeThing || EXIT /B 1
:: DoSomeThing || GOTO :EOF

:: Redirect error (2) to out (1) and save to file
:: DoSomeThing > output.txt 2>&1

IF EXIST foo (
    ECHO found
) ELSE (
    ECHO not found
)

IF "%someVar%"=="" (SET someVar=Default value)
IF NOT DEFINED someVar (SET someVar=Default value)

IF /I "%someVar%"=="default value" (
    ECHO Defaulted: %someVar%
)

CALL :function 5 2
echo %ERRORLEVEL%

EXIT /B 0

:function
SET /A result = %1 * %2
EXIT /B %result%
