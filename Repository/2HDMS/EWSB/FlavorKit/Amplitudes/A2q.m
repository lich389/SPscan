(* ----------------------------------------------------------------------------- *) 
(* This model was automatically created by SARAH version4.15.1  *) 
(* SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223 *) 
(* (c) Florian Staub, 2013  *) 
(* ----------------------------------------------------------------------------- *) 
(* File created at 10:25 on 30.6.2025  *) 
(* ---------------------------------------------------------------------- *) 
 
 
LoopContributions[A2q]={
chargefactor -> 1,{coup1L -> Cp[bar[Fd], Fd, Ah][L][gt2,gt1,gt3],coup1R -> Cp[bar[Fd], Fd, Ah][R][gt2,gt1,gt3]},}
(* Ah,Fd, Internal:bar[Fd]*) 
{{Ah,Fd,Internal->bar[Fd]},chargefactor -> 1,{coup1L -> Cp[bar[Fd], Fd, Ah][L][i2,gt1,i1],coup1R -> Cp[bar[Fd], Fd, Ah][R][i2,gt1,i1],coup2L -> Cp[bar[Fd], Fd, Ah][L][i3,i2,i1],coup2R -> Cp[bar[Fd], Fd, Ah][R][i3,i2,i1],coup3L -> Cp[bar[Fd], Fd, Ah][L][gt2,i3,gt3],coup3R -> Cp[bar[Fd], Fd, Ah][R][gt2,i3,gt3]},{mS1 -> M[Ah][i1],mF1 -> M[Fd][i2],MFin -> M[Fd][i3]-M[Fd][gt1]}},
(* hh,Fd, Internal:bar[Fd]*) 
{{hh,Fd,Internal->bar[Fd]},chargefactor -> 1,{coup1L -> Cp[bar[Fd], Fd, hh][L][i2,gt1,i1],coup1R -> Cp[bar[Fd], Fd, hh][R][i2,gt1,i1],coup2L -> Cp[bar[Fd], Fd, hh][L][i3,i2,i1],coup2R -> Cp[bar[Fd], Fd, hh][R][i3,i2,i1],coup3L -> Cp[bar[Fd], Fd, Ah][L][gt2,i3,gt3],coup3R -> Cp[bar[Fd], Fd, Ah][R][gt2,i3,gt3]},{mS1 -> M[hh][i1],mF1 -> M[Fd][i2],MFin -> M[Fd][i3]-M[Fd][gt1]}},
(* VZ,Fd, Internal:bar[Fd]*) 
{{VZ,Fd,Internal->bar[Fd]},chargefactor -> 1,{coup1L -> Cp[bar[Fd], Fd, VZ][L][i2,gt1],coup1R -> Cp[bar[Fd], Fd, VZ][R][i2,gt1],coup2L -> Cp[bar[Fd], Fd, VZ][L][i3,i2],coup2R -> Cp[bar[Fd], Fd, VZ][R][i3,i2],coup3L -> Cp[bar[Fd], Fd, Ah][L][gt2,i3,gt3],coup3R -> Cp[bar[Fd], Fd, Ah][R][gt2,i3,gt3]},{mV1 -> M[VZ],mF1 -> M[Fd][i2],MFin -> M[Fd][i3]-M[Fd][gt1]}},
(* bar[Fu],Hm, Internal:bar[Fd]*) 
{{bar[Fu],Hm,Internal->bar[Fd]},chargefactor -> 1,{coup1L -> Cp[bar[Fu], Fd, conj[Hm]][L][i1,gt1,i2],coup1R -> Cp[bar[Fu], Fd, conj[Hm]][R][i1,gt1,i2],coup2L -> Cp[bar[Fd], Fu, Hm][L][i3,i1,i2],coup2R -> Cp[bar[Fd], Fu, Hm][R][i3,i1,i2],coup3L -> Cp[bar[Fd], Fd, Ah][L][gt2,i3,gt3],coup3R -> Cp[bar[Fd], Fd, Ah][R][gt2,i3,gt3]},{mF1 -> M[Fu][i1],mS1 -> M[Hm][i2],MFin -> M[Fd][i3]-M[Fd][gt1]}},
(* bar[Fu],VWm, Internal:bar[Fd]*) 
{{bar[Fu],VWm,Internal->bar[Fd]},chargefactor -> 1,{coup1L -> Cp[bar[Fu], Fd, conj[VWm]][L][i1,gt1],coup1R -> Cp[bar[Fu], Fd, conj[VWm]][R][i1,gt1],coup2L -> Cp[bar[Fd], Fu, VWm][L][i3,i1],coup2R -> Cp[bar[Fd], Fu, VWm][R][i3,i1],coup3L -> Cp[bar[Fd], Fd, Ah][L][gt2,i3,gt3],coup3R -> Cp[bar[Fd], Fd, Ah][R][gt2,i3,gt3]},{mF1 -> M[Fu][i1],mV1 -> M[VWm],MFin -> M[Fd][i3]-M[Fd][gt1]}},
(* Fd,Ah, Internal:Fd*) 
{{Fd,Ah,Internal->Fd},chargefactor -> 1,{coup3L -> Cp[bar[Fd], Fd, Ah][L][i3,gt1,gt3],coup3R -> Cp[bar[Fd], Fd, Ah][R][i3,gt1,gt3],coup2L -> Cp[bar[Fd], Fd, Ah][L][i1,i3,i2],coup2R -> Cp[bar[Fd], Fd, Ah][R][i1,i3,i2],coup1L -> Cp[bar[Fd], Fd, Ah][L][gt2,i1,i2],coup1R -> Cp[bar[Fd], Fd, Ah][R][gt2,i1,i2]},{mF1 -> M[Fd][i1],mS1 -> M[Ah][i2],MFin -> M[Fd][i3]-M[Fd][gt2]}},
(* Fd,hh, Internal:Fd*) 
{{Fd,hh,Internal->Fd},chargefactor -> 1,{coup3L -> Cp[bar[Fd], Fd, Ah][L][i3,gt1,gt3],coup3R -> Cp[bar[Fd], Fd, Ah][R][i3,gt1,gt3],coup2L -> Cp[bar[Fd], Fd, hh][L][i1,i3,i2],coup2R -> Cp[bar[Fd], Fd, hh][R][i1,i3,i2],coup1L -> Cp[bar[Fd], Fd, hh][L][gt2,i1,i2],coup1R -> Cp[bar[Fd], Fd, hh][R][gt2,i1,i2]},{mF1 -> M[Fd][i1],mS1 -> M[hh][i2],MFin -> M[Fd][i3]-M[Fd][gt2]}},
(* Fd,VZ, Internal:Fd*) 
{{Fd,VZ,Internal->Fd},chargefactor -> 1,{coup3L -> Cp[bar[Fd], Fd, Ah][L][i3,gt1,gt3],coup3R -> Cp[bar[Fd], Fd, Ah][R][i3,gt1,gt3],coup2L -> Cp[bar[Fd], Fd, VZ][L][i1,i3],coup2R -> Cp[bar[Fd], Fd, VZ][R][i1,i3],coup1L -> Cp[bar[Fd], Fd, VZ][L][gt2,i1],coup1R -> Cp[bar[Fd], Fd, VZ][R][gt2,i1]},{mF1 -> M[Fd][i1],mV1 -> M[VZ],MFin -> M[Fd][i3]-M[Fd][gt2]}},
(* Hm,bar[Fu], Internal:Fd*) 
{{Hm,bar[Fu],Internal->Fd},chargefactor -> 1,{coup3L -> Cp[bar[Fd], Fd, Ah][L][i3,gt1,gt3],coup3R -> Cp[bar[Fd], Fd, Ah][R][i3,gt1,gt3],coup2L -> Cp[bar[Fu], Fd, conj[Hm]][L][i2,i3,i1],coup2R -> Cp[bar[Fu], Fd, conj[Hm]][R][i2,i3,i1],coup1L -> Cp[bar[Fd], Fu, Hm][L][gt2,i2,i1],coup1R -> Cp[bar[Fd], Fu, Hm][R][gt2,i2,i1]},{mS1 -> M[Hm][i1],mF1 -> M[Fu][i2],MFin -> M[Fd][i3]-M[Fd][gt2]}},
(* VWm,bar[Fu], Internal:Fd*) 
{{VWm,bar[Fu],Internal->Fd},chargefactor -> 1,{coup3L -> Cp[bar[Fd], Fd, Ah][L][i3,gt1,gt3],coup3R -> Cp[bar[Fd], Fd, Ah][R][i3,gt1,gt3],coup2L -> Cp[bar[Fu], Fd, conj[VWm]][L][i2,i3],coup2R -> Cp[bar[Fu], Fd, conj[VWm]][R][i2,i3],coup1L -> Cp[bar[Fd], Fu, VWm][L][gt2,i2],coup1R -> Cp[bar[Fd], Fu, VWm][R][gt2,i2]},{mV1 -> M[VWm],mF1 -> M[Fu][i2],MFin -> M[Fd][i3]-M[Fd][gt2]}}
(* Ah,Fd,Fd*) 
{{Ah,Fd,Fd},chargefactor -> 1,{coup1L -> Cp[bar[Fd], Fd, Ah][L][i2,gt1,i1],coup1R -> Cp[bar[Fd], Fd, Ah][R][i2,gt1,i1],coup2L -> Cp[bar[Fd], Fd, Ah][L][gt2,i3,i1],coup2R -> Cp[bar[Fd], Fd, Ah][R][gt2,i3,i1],coup3L -> Cp[bar[Fd], Fd, Ah][L][i3,i2,gt3],coup3R -> Cp[bar[Fd], Fd, Ah][R][i3,i2,gt3]},},
(* hh,Fd,Fd*) 
{{hh,Fd,Fd},chargefactor -> 1,{coup1L -> Cp[bar[Fd], Fd, hh][L][i2,gt1,i1],coup1R -> Cp[bar[Fd], Fd, hh][R][i2,gt1,i1],coup2L -> Cp[bar[Fd], Fd, hh][L][gt2,i3,i1],coup2R -> Cp[bar[Fd], Fd, hh][R][gt2,i3,i1],coup3L -> Cp[bar[Fd], Fd, Ah][L][i3,i2,gt3],coup3R -> Cp[bar[Fd], Fd, Ah][R][i3,i2,gt3]},},
(* VZ,Fd,Fd*) 
{{VZ,Fd,Fd},chargefactor -> 1,{coup1L -> Cp[bar[Fd], Fd, VZ][L][i2,gt1],coup1R -> Cp[bar[Fd], Fd, VZ][R][i2,gt1],coup2L -> Cp[bar[Fd], Fd, VZ][L][gt2,i3],coup2R -> Cp[bar[Fd], Fd, VZ][R][gt2,i3],coup3L -> Cp[bar[Fd], Fd, Ah][L][i3,i2,gt3],coup3R -> Cp[bar[Fd], Fd, Ah][R][i3,i2,gt3]},},
(* bar[Fd],Ah,Ah*) 
{{bar[Fd],Ah,Ah},chargefactor -> 1,{coup1L -> Cp[bar[Fd], Fd, Ah][L][i1,gt1,i2],coup1R -> Cp[bar[Fd], Fd, Ah][R][i1,gt1,i2],coup2L -> Cp[bar[Fd], Fd, Ah][L][gt2,i1,i3],coup2R -> Cp[bar[Fd], Fd, Ah][R][gt2,i1,i3],coup3 -> Cp[Ah, Ah, Ah][gt3,i3,i2]},},
(* bar[Fd],hh,Ah*) 
{{bar[Fd],hh,Ah},chargefactor -> 1,{coup1L -> Cp[bar[Fd], Fd, hh][L][i1,gt1,i2],coup1R -> Cp[bar[Fd], Fd, hh][R][i1,gt1,i2],coup2L -> Cp[bar[Fd], Fd, Ah][L][gt2,i1,i3],coup2R -> Cp[bar[Fd], Fd, Ah][R][gt2,i1,i3],coup3 -> Cp[Ah, Ah, hh][gt3,i3,i2]},},
(* bar[Fd],Ah,hh*) 
{{bar[Fd],Ah,hh},chargefactor -> 1,{coup1L -> Cp[bar[Fd], Fd, Ah][L][i1,gt1,i2],coup1R -> Cp[bar[Fd], Fd, Ah][R][i1,gt1,i2],coup2L -> Cp[bar[Fd], Fd, hh][L][gt2,i1,i3],coup2R -> Cp[bar[Fd], Fd, hh][R][gt2,i1,i3],coup3 -> Cp[Ah, Ah, hh][gt3,i2,i3]},},
(* bar[Fd],hh,hh*) 
{{bar[Fd],hh,hh},chargefactor -> 1,{coup1L -> Cp[bar[Fd], Fd, hh][L][i1,gt1,i2],coup1R -> Cp[bar[Fd], Fd, hh][R][i1,gt1,i2],coup2L -> Cp[bar[Fd], Fd, hh][L][gt2,i1,i3],coup2R -> Cp[bar[Fd], Fd, hh][R][gt2,i1,i3],coup3 -> Cp[Ah, hh, hh][gt3,i3,i2]},},
(* bar[Fd],VZ,hh*) 
{{bar[Fd],VZ,hh},chargefactor -> 1,{coup1L -> Cp[bar[Fd], Fd, VZ][L][i1,gt1],coup1R -> Cp[bar[Fd], Fd, VZ][R][i1,gt1],coup2L -> Cp[bar[Fd], Fd, hh][L][gt2,i1,i3],coup2R -> Cp[bar[Fd], Fd, hh][R][gt2,i1,i3],coup3 -> Cp[Ah, hh, VZ][gt3,i3]},},
(* bar[Fd],hh,VZ*) 
{{bar[Fd],hh,VZ},chargefactor -> 1,{coup1L -> Cp[bar[Fd], Fd, hh][L][i1,gt1,i2],coup1R -> Cp[bar[Fd], Fd, hh][R][i1,gt1,i2],coup2L -> Cp[bar[Fd], Fd, VZ][L][gt2,i1],coup2R -> Cp[bar[Fd], Fd, VZ][R][gt2,i1],coup3 -> Cp[Ah, hh, VZ][gt3,i2]},},
(* bar[Fu],Hm,Hm*) 
{{bar[Fu],Hm,Hm},chargefactor -> 1,{coup1L -> Cp[bar[Fu], Fd, conj[Hm]][L][i1,gt1,i2],coup1R -> Cp[bar[Fu], Fd, conj[Hm]][R][i1,gt1,i2],coup2L -> Cp[bar[Fd], Fu, Hm][L][gt2,i1,i3],coup2R -> Cp[bar[Fd], Fu, Hm][R][gt2,i1,i3],coup3 -> Cp[Ah, Hm, conj[Hm]][gt3,i2,i3]},},
(* bar[Fu],VWm,Hm*) 
{{bar[Fu],VWm,Hm},chargefactor -> 1,{coup1L -> Cp[bar[Fu], Fd, conj[VWm]][L][i1,gt1],coup1R -> Cp[bar[Fu], Fd, conj[VWm]][R][i1,gt1],coup2L -> Cp[bar[Fd], Fu, Hm][L][gt2,i1,i3],coup2R -> Cp[bar[Fd], Fu, Hm][R][gt2,i1,i3],coup3 -> Cp[Ah, conj[Hm], VWm][gt3,i3]},},
(* bar[Fu],Hm,VWm*) 
{{bar[Fu],Hm,VWm},chargefactor -> 1,{coup1L -> Cp[bar[Fu], Fd, conj[Hm]][L][i1,gt1,i2],coup1R -> Cp[bar[Fu], Fd, conj[Hm]][R][i1,gt1,i2],coup2L -> Cp[bar[Fd], Fu, VWm][L][gt2,i1],coup2R -> Cp[bar[Fd], Fu, VWm][R][gt2,i1],coup3 -> Cp[Ah, Hm, conj[VWm]][gt3,i2]},},
(* conj[Hm],Fu,Fu*) 
{{conj[Hm],Fu,Fu},chargefactor -> 1,{coup1L -> Cp[bar[Fu], Fd, conj[Hm]][L][i2,gt1,i1],coup1R -> Cp[bar[Fu], Fd, conj[Hm]][R][i2,gt1,i1],coup2L -> Cp[bar[Fd], Fu, Hm][L][gt2,i3,i1],coup2R -> Cp[bar[Fd], Fu, Hm][R][gt2,i3,i1],coup3L -> Cp[bar[Fu], Fu, Ah][L][i3,i2,gt3],coup3R -> Cp[bar[Fu], Fu, Ah][R][i3,i2,gt3]},},
(* conj[VWm],Fu,Fu*) 
{{conj[VWm],Fu,Fu},chargefactor -> 1,{coup1L -> Cp[bar[Fu], Fd, conj[VWm]][L][i2,gt1],coup1R -> Cp[bar[Fu], Fd, conj[VWm]][R][i2,gt1],coup2L -> Cp[bar[Fd], Fu, VWm][L][gt2,i3],coup2R -> Cp[bar[Fd], Fu, VWm][R][gt2,i3],coup3L -> Cp[bar[Fu], Fu, Ah][L][i3,i2,gt3],coup3R -> Cp[bar[Fu], Fu, Ah][R][i3,i2,gt3]},}
};