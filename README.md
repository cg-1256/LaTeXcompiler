# READ ME

This is a Bash script file that compiles both the .tex and .bib files in order to create a PDF file, as well as delete files that the user will most likely not need after the files have been compiled. 

The assumption has been made that you - the user - have the appropriate LaTeX package downloaded. This script has been tested on MacOS (based on ARM architecture), but future tests are coming in the future to ensure adequate cross-operating system performance.

## To Use
To prevent confusion, place the bash file in the same folder with the .tex and .bib files. Then run the following commands to compile the files and obtain the PDF:
```
	sudo chmod +x turnPdf.sh
	./turnPdf.sh'''
