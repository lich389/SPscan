#!/bin/bash 
pdflatex Observable_dummy.tex 
cd Diagrams 
find . -name "*.mp" -exec mpost {} \; 
cd .. 
pdflatex  Observable_dummy.tex 
echo "" 
echo "PDF for Observable dummy finished" 
echo "Thanks for using SARAH" 
echo "" 
