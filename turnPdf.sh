#!/bin/bash

echo "Please ensure that the .tex and .bib file have the same file name, ignoring the file extension."

echo -n "What is the filename? "
read filename

pdflatex $filename
biber $filename
pdflatex $filename


texName=$filename".tex"
bibName=$filename".bib"
pdfName=$filename".pdf"

for file in *; do 
    if [ -f "$file" ]; then 
        if [[ "$file" = "$texName" || "$file" = "$bibName" || "$file" = "$pdfName" || "$file" = "turnPdf.sh" ]]; then
            echo "Deleting unneeded files..."
        else 
            rm "$file" 
        fi
    fi 
done

echo "You now have the corresponding PDF"

#if [ $file -ne $texName ]; then
# delete=true
# elif $file -ne $bibName;
# then delete=true
# elif $file != $pdfName;
# then delete=true
# fi
# if delete == true; then rm $file; fi