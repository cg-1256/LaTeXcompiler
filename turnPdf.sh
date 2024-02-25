#!/bin/bash

clear
echo "Please ensure that the .tex and .bib file have the same file name, ignoring the file extension."

echo -n -e "\nWhat is the filename? "
read filename

echo -e "\nCompiling .tex file..."
pdflatex $filename 1> /dev/null

echo -e "\nCompiling .bib file..."
biber $filename 1> /dev/null

echo -e "\nCompiling .tex file again..."
pdflatex $filename 1> /dev/null


texName=$filename".tex"
bibName=$filename".bib"
pdfName=$filename".pdf"

for file in *; do 
    if [ -f "$file" ]; then 
        if [[ "$file" = "$texName" || "$file" = "$bibName" || "$file" = "$pdfName" || "$file" = "turnPdf.sh" ]]; then
            echo -e "\nDeleting unneeded files..."
        else 
            rm "$file" 
        fi
    fi 
done

echo -e "\nYou now have the corresponding PDF."
echo -e "\nHere are the stats for your document:"
texcount $filename.tex