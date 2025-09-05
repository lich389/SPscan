mkdir build && cd build
wget https://spheno.hepforge.org/downloader?f=SPheno-4.0.5.tar.gz
tar -xvf downloader?f=SPheno-4.0.5.tar.gz
rm downloader?f=SPheno-4.0.5.tar.gz
cd SPheno-4.0.5
sed -i '9s/ifort/gfortran/g' Makefile 
cp -r ../../Repository/2HDMS/EWSB/SPheno 2HDMS/
make Model=2HDMS/
