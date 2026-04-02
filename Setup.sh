mkdir build && cd build
wget https://spheno.hepforge.org/downloader?f=SPheno-4.0.5.tar.gz
tar -xvf downloader?f=SPheno-4.0.5.tar.gz
rm downloader?f=SPheno-4.0.5.tar.gz
cd SPheno-4.0.5
sed -i '9s/ifort/gfortran/g' Makefile 
cp -r ../../Repository/2HDMS/EWSB/SPheno 2HDMS/
make Model=2HDMS/

cp -r ../../Repository/C2HDMS/EWSB/SPheno C2HDMS/
make Model=C2HDMS/

# cd ..
# git clone https://gitlab.com/higgsbounds/hbdataset.git
# git clone https://gitlab.com/higgsbounds/hsdataset.git
# git https://gitlab.com/higgsbounds/higgstools.git
# cd higgstools
# pip install .
# cd ..

# Generate prefix.json
cd ../..
SCAN_DIR="$(pwd)"
HOME_DIR="$HOME"
MEMORY="/dev/shm/"
SPHENO_DIR="$SCAN_DIR/build/SPheno-4.0.5/"
INPUT_PATH="$SCAN_DIR/inputs/"
INPUT_FILE="$SCAN_DIR/inputs/input_2HDMS.json"

# Default paths for other dependencies (modify as needed)
MICROMEGA_DIR="/home/licheng/Code/micromegas_5.2.13/complexZ2bDM/"
HBDATASET_DIR="/home/licheng/Code/hbdataset/"
HSDATASET_DIR="/home/licheng/Code/hsdataset/"
EVADE_DIR="/home/licheng/Code/EVADE/build/"

cat > prefix.json << EOF
{
    "memory": "$MEMORY",
    "home": "$HOME_DIR/",
    "scan": "$SCAN_DIR/",
    "input_path": "$INPUT_PATH",
    "input": "$INPUT_FILE",
    "SPheno": "$SPHENO_DIR",
    "micromega": "$MICROMEGA_DIR",
    "hbdataset": "$HBDATASET_DIR",
    "hsdataset": "$HSDATASET_DIR",
    "evade": "$EVADE_DIR"
}
EOF

echo "prefix.json generated with current paths."