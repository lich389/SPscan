#!/bin/bash 
pdflatex N2HDM-EWSB.tex 
cd Diagrams 
find . -name "*.mp" -exec mpost {} \; 
cd .. 
pdflatex N2HDM-EWSB.tex 
echo "" 
echo "PDF for Model finished" 
echo "Thanks for using SARAH" 
echo "" 
