modname = C2HDMS  # as an example  
PreDef = -DGENERATIONMIXING -DONLYDOUBLE
# setting various paths  
InDir = ../include
Mdir = ${InDir}
VPATH = 3-Body-Decays:LoopDecays:TwoLoopMasses:Observables:SM 
name = ../lib/libSPhenoC2HDMS.a
 
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
bin/SPhenoC2HDMS:
ifeq (${cVersion},1)
	 cd ../src ; ${MAKE} F90=${F90} 
	 ${MAKE} F90=${F90} ${name} 
	 ${MAKE} F90=${F90} SPhenoC2HDMS.o 
	 ${F90} -o SPhenoC2HDMS ${LFlagsB} SPhenoC2HDMS.o ../lib/libSPhenoC2HDMS.a ../lib/libSPheno.a
	 mv SPhenoC2HDMS ../bin
	 rm SPhenoC2HDMS.o  
${name}:  ${name}(Settings.o) ${name}(Model_Data_C2HDMS.o)  \
 ${name}(RGEs_C2HDMS.o)   \
 ${name}(Couplings_C2HDMS.o) ${name}(TreeLevelMasses_C2HDMS.o) ${name}(TadpoleEquations_C2HDMS.o) \
 ${name}(LoopCouplings_C2HDMS.o) ${name}(CouplingsForDecays_C2HDMS.o) \
 ${name}(TreeLevel_Decays_C2HDMS.o) \
 ${name}(Fu.o)  ${name}(Fe.o)  ${name}(Fd.o)  \
${name}(AddLoopFunctions.o) ${name}(Kinematics.o) \
 ${name}(2LPoleFunctions.o) ${name}(2LPole_C2HDMS.o) \
 ${name}(LoopMasses_C2HDMS.o) \
 ${name}(RGEs_SM_HC.o) ${name}(Couplings_SM_HC.o) ${name}(TreeLevelMasses_SM_HC.o) ${name}(LoopMasses_SM_HC.o)   \
${name}(CouplingsCT_C2HDMS.o) \
${name}(Bremsstrahlung.o) ${name}(DecayFFS.o) ${name}(DecayFFV.o) ${name}(DecaySSS.o) ${name}(DecaySSV.o) ${name}(DecaySFF.o) ${name}(DecaySVV.o) \
 ${name}(LoopDecayFu_C2HDMS.o)  ${name}(LoopDecayFe_C2HDMS.o)  ${name}(LoopDecayFd_C2HDMS.o)  ${name}(LoopDecayhh_C2HDMS.o)  ${name}(LoopDecayHm_C2HDMS.o) \
 ${name}(Wrapper_LoopDecay_Fu_C2HDMS.o)  ${name}(Wrapper_LoopDecay_Fe_C2HDMS.o)  ${name}(Wrapper_LoopDecay_Fd_C2HDMS.o)  ${name}(Wrapper_LoopDecay_hh_C2HDMS.o)  ${name}(Wrapper_LoopDecay_Hm_C2HDMS.o) ${name}(OneLoopDecays_C2HDMS.o) \
 ${name}(BranchingRatios_C2HDMS.o) ${name}(HiggsCS_C2HDMS.o) ${name}(RunSM_C2HDMS.o) \
 ${name}(Unitarity_C2HDMS.o) \
${name}(FlavorKit_LFV_C2HDMS.o) ${name}(FlavorKit_QFV_C2HDMS.o) ${name}(FlavorKit_Observables_C2HDMS.o)\
 ${name}(LowEnergy_C2HDMS.o) \
 ${name}(Boundaries_C2HDMS.o)  ${name}(InputOutput_C2HDMS.o) 
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
