pdflatex C2HDMS-EWSB.tex 
cd Diagrams 
FOR %%I IN (*.mp) DO MPOST "%%I" 
cd .. 
pdflatex C2HDMS-EWSB.tex 
