#!/bin/bash 
pdflatex C2HDMS-EWSB.tex 
cd Diagrams 
find . -name "*.mp" -exec mpost {} \; 
cd .. 
pdflatex C2HDMS-EWSB.tex 
echo "" 
echo "PDF for Model finished" 
echo "Thanks for using SARAH" 
echo "" 
