pdflatex N2HDM-EWSB.tex 
cd Diagrams 
FOR %%I IN (*.mp) DO MPOST "%%I" 
cd .. 
pdflatex N2HDM-EWSB.tex 
