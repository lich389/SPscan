#!/bin/bash 
pdflatex 2HDMS-EWSB.tex 
cd Diagrams 
find . -name "*.mp" -exec mpost {} \; 
cd .. 
pdflatex 2HDMS-EWSB.tex 
echo "" 
echo "PDF for Model finished" 
echo "Thanks for using SARAH" 
echo "" 
