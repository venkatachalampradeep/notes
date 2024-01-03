@echo off

REM Check for input argument
IF "%~1"=="" (
    echo Usage: %0 file.tex
    exit /b 1
)

REM Get the base filename
set "inputfile=%~1"
set "basename=%~n1"

REM Step 1: Compile the LaTeX document
pdflatex -output-directory=build "%inputfile%"

REM Ensure the 'doc' directory exists
if not exist doc mkdir doc

REM Step 2: Move the PDF to a 'doc' directory
move build\%basename%.pdf doc\
