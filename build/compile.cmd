@echo off

rem Create the directory if it does not exist
IF NOT EXIST ..\bin\ MKDIR ..\bin

rem Create a file for each locale
for /f %%a IN ('dir /b ..\src\globalization\*.js') do (
	echo Compiling date-%%~na.js
 	java -jar compiler/compiler.jar --js=..\src\globalization\%%a --js=../src/core.js --js=../src/sugarpak.js --js=../src/parser.js --js=../src/extras.js --js=../src/time.js --js_output_file=../bin/date-%%~na.js
)