modname = 2HDMSCPV  # as an example  
PreDef = -DGENERATIONMIXING -DONLYDOUBLE
# setting various paths  
InDir = ../include
Mdir = ${InDir}
VPATH = 3-Body-Decays:LoopDecays:TwoLoopMasses:Observables:SM 
name = ../lib/libSPheno2HDMSCPV.a
 
# check if SARAH module and SPheno are compatibel  
minV=330.00 
cVersion =$(shell expr $(version) \>= $(minV))
#  
# options for various compilers  
#  
# Default Compiler  
F90=gfortran
comp= -c -O -module ${Mdir} -I${InDir}  
LFlagsB= -O  
# Intels ifort,debug modus  
ifeq (${F90},ifortg)  
F90=ifort  
comp= -c -g -module ${Mdir} -I${InDir}  
LFlagsB= -g  
endif  
# gfortran  
ifeq (${F90},gfortran)  
comp= -c -g -ffree-line-length-none -J${Mdir} -I${InDir}  
LFlagsB= -g  
endif  
# g95  
ifeq (${F90},g95)  
comp= -c -O -fmod=${Mdir} -I${InDir}  
LFlagsB= -O  
endif  
# Lahey F95 compiler  
ifeq (${F90},lf95)  
comp=-c -O -M ${Mdir} -I${InDir}  
LFlagsB=-O  
endif  
# NAG f95/2003  
ifeq (${F90},nagfor)  
comp= -c -O -mdir ${Mdir} -I${InDir}  
LFlagsB= -O -DONLYDOUBLE -mdir ${MDir} -I${InDir}  
endif   
.SUFFIXES : .o .ps .f90 .F90 .a 
bin/SPheno2HDMSCPV:
ifeq (${cVersion},1)
	 cd ../src ; ${MAKE} F90=${F90} 
	 ${MAKE} F90=${F90} ${name} 
	 ${MAKE} F90=${F90} SPheno2HDMSCPV.o 
	 ${F90} -o SPheno2HDMSCPV ${LFlagsB} SPheno2HDMSCPV.o ../lib/libSPheno2HDMSCPV.a ../lib/libSPheno.a
	 mv SPheno2HDMSCPV ../bin
	 rm SPheno2HDMSCPV.o  
${name}:  ${name}(Settings.o) ${name}(Model_Data_2HDMSCPV.o)  \
 ${name}(RGEs_2HDMSCPV.o)   \
 ${name}(Couplings_2HDMSCPV.o) ${name}(TreeLevelMasses_2HDMSCPV.o) ${name}(TadpoleEquations_2HDMSCPV.o) \
 ${name}(LoopCouplings_2HDMSCPV.o) ${name}(CouplingsForDecays_2HDMSCPV.o) \
 ${name}(TreeLevel_Decays_2HDMSCPV.o) \
 ${name}(Fu.o)  ${name}(Fe.o)  ${name}(Fd.o)  \
${name}(AddLoopFunctions.o) ${name}(Kinematics.o) \
 ${name}(2LPoleFunctions.o) ${name}(2LPole_2HDMSCPV.o) \
 ${name}(LoopMasses_2HDMSCPV.o) \
 ${name}(RGEs_SM_HC.o) ${name}(Couplings_SM_HC.o) ${name}(TreeLevelMasses_SM_HC.o) ${name}(LoopMasses_SM_HC.o)   \
${name}(CouplingsCT_2HDMSCPV.o) \
${name}(Bremsstrahlung.o) ${name}(DecayFFS.o) ${name}(DecayFFV.o) ${name}(DecaySSS.o) ${name}(DecaySSV.o) ${name}(DecaySFF.o) ${name}(DecaySVV.o) \
 ${name}(LoopDecayFu_2HDMSCPV.o)  ${name}(LoopDecayFe_2HDMSCPV.o)  ${name}(LoopDecayFd_2HDMSCPV.o)  ${name}(LoopDecayhh_2HDMSCPV.o)  ${name}(LoopDecayHm_2HDMSCPV.o) \
 ${name}(Wrapper_LoopDecay_Fu_2HDMSCPV.o)  ${name}(Wrapper_LoopDecay_Fe_2HDMSCPV.o)  ${name}(Wrapper_LoopDecay_Fd_2HDMSCPV.o)  ${name}(Wrapper_LoopDecay_hh_2HDMSCPV.o)  ${name}(Wrapper_LoopDecay_Hm_2HDMSCPV.o) ${name}(OneLoopDecays_2HDMSCPV.o) \
 ${name}(BranchingRatios_2HDMSCPV.o) ${name}(HiggsCS_2HDMSCPV.o) ${name}(RunSM_2HDMSCPV.o) \
 ${name}(Unitarity_2HDMSCPV.o) \
${name}(FlavorKit_LFV_2HDMSCPV.o) ${name}(FlavorKit_QFV_2HDMSCPV.o) ${name}(FlavorKit_Observables_2HDMSCPV.o)\
 ${name}(LowEnergy_2HDMSCPV.o) \
 ${name}(Boundaries_2HDMSCPV.o)  ${name}(InputOutput_2HDMSCPV.o) 
else 
	 @echo -------------------------------------------------------------------  
	 @echo ERROR:  
	 @echo The installed SPheno is version not compatibel with this module 
	 @echo Please, upgrade at least to SPheno version 3.3.0.  
	 @echo The current SPheno version can be downloaded from 
	 @echo http://www.hepforge.org/downloads/spheno 
	 @echo ------------------------------------------------------------------- 
endif 
clean: 
	 rm -f *.o *~ */*.o */*~
cleanall: 
	 rm -f bin/SPheno3 lib/*.a *~ */*.o */*~ include/*
#
# Suffix rules
#
.f90.a:
	 ${F90} ${comp} $< 
	 ar -ruc -U $@ $*.o
	 rm -f $*.o
.F90.a:
	 ${F90} ${comp} ${PreDef} $< 
	 ar -ruc -U $@ $*.o
	 rm -f $*.o
.f90.o:
	 ${F90} ${comp} $<
.f90.ps:
	 a2ps -o $*.ps $<
.h.ps:
	 a2ps -o $*.ps $<
