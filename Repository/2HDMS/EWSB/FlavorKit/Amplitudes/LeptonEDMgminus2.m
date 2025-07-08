(* ----------------------------------------------------------------------------- *) 
(* This model was automatically created by SARAH version4.15.1  *) 
(* SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223 *) 
(* (c) Florian Staub, 2013  *) 
(* ----------------------------------------------------------------------------- *) 
(* File created at 10:25 on 30.6.2025  *) 
(* ---------------------------------------------------------------------- *) 
 
 
LoopContributions[LeptonEDMgminus2]={
chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fe, VP][L][gt1,gt2],coup1R -> Cp[bar[Fe], Fe, VP][R][gt1,gt2]},}
(* Ah,bar[Fe], Internal:Fe*) 
{{Ah,bar[Fe],Internal->Fe},chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fe, Ah][L][gt1,i2,i1],coup1R -> Cp[bar[Fe], Fe, Ah][R][gt1,i2,i1],coup2L -> Cp[bar[Fe], Fe, Ah][L][i2,i3,i1],coup2R -> Cp[bar[Fe], Fe, Ah][R][i2,i3,i1],coup3L -> Cp[bar[Fe], Fe, VP][L][i3,gt2],coup3R -> Cp[bar[Fe], Fe, VP][R][i3,gt2]},{mS1 -> M[Ah][i1],mF1 -> M[Fe][i2],MFin -> M[Fe][i3]-M[Fe][gt1]}},
(* Fe,hh, Internal:Fe*) 
{{Fe,hh,Internal->Fe},chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fe, hh][L][gt1,i1,i2],coup1R -> Cp[bar[Fe], Fe, hh][R][gt1,i1,i2],coup2L -> Cp[bar[Fe], Fe, hh][L][i1,i3,i2],coup2R -> Cp[bar[Fe], Fe, hh][R][i1,i3,i2],coup3L -> Cp[bar[Fe], Fe, VP][L][i3,gt2],coup3R -> Cp[bar[Fe], Fe, VP][R][i3,gt2]},{mF1 -> M[Fe][i1],mS1 -> M[hh][i2],MFin -> M[Fe][i3]-M[Fe][gt1]}},
(* Fe,VZ, Internal:Fe*) 
{{Fe,VZ,Internal->Fe},chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fe, VZ][L][gt1,i1],coup1R -> Cp[bar[Fe], Fe, VZ][R][gt1,i1],coup2L -> Cp[bar[Fe], Fe, VZ][L][i1,i3],coup2R -> Cp[bar[Fe], Fe, VZ][R][i1,i3],coup3L -> Cp[bar[Fe], Fe, VP][L][i3,gt2],coup3R -> Cp[bar[Fe], Fe, VP][R][i3,gt2]},{mF1 -> M[Fe][i1],mV1 -> M[VZ],MFin -> M[Fe][i3]-M[Fe][gt1]}},
(* Fv,conj[Hm], Internal:Fe*) 
{{Fv,conj[Hm],Internal->Fe},chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fv, Hm][L][gt1,i1,i2],coup1R -> Cp[bar[Fe], Fv, Hm][R][gt1,i1,i2],coup2L -> Cp[bar[Fv], Fe, conj[Hm]][L][i1,i3,i2],coup2R -> Cp[bar[Fv], Fe, conj[Hm]][R][i1,i3,i2],coup3L -> Cp[bar[Fe], Fe, VP][L][i3,gt2],coup3R -> Cp[bar[Fe], Fe, VP][R][i3,gt2]},{mF1 -> 0,mS1 -> M[Hm][i2],MFin -> M[Fe][i3]-M[Fe][gt1]}},
(* Fv,conj[VWm], Internal:Fe*) 
{{Fv,conj[VWm],Internal->Fe},chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fv, VWm][L][gt1,i1],coup1R -> Cp[bar[Fe], Fv, VWm][R][gt1,i1],coup2L -> Cp[bar[Fv], Fe, conj[VWm]][L][i1,i3],coup2R -> Cp[bar[Fv], Fe, conj[VWm]][R][i1,i3],coup3L -> Cp[bar[Fe], Fe, VP][L][i3,gt2],coup3R -> Cp[bar[Fe], Fe, VP][R][i3,gt2]},{mF1 -> 0,mV1 -> M[VWm],MFin -> M[Fe][i3]-M[Fe][gt1]}},
(* bar[Fe],Ah, Internal:bar[Fe]*) 
{{bar[Fe],Ah,Internal->bar[Fe]},chargefactor -> 1,{coup3L -> Cp[bar[Fe], Fe, VP][L][gt1,i3],coup3R -> Cp[bar[Fe], Fe, VP][R][gt1,i3],coup2L -> Cp[bar[Fe], Fe, Ah][L][i3,i1,i2],coup2R -> Cp[bar[Fe], Fe, Ah][R][i3,i1,i2],coup1L -> Cp[bar[Fe], Fe, Ah][L][i1,gt2,i2],coup1R -> Cp[bar[Fe], Fe, Ah][R][i1,gt2,i2]},{mF1 -> M[Fe][i1],mS1 -> M[Ah][i2],MFin -> M[Fe][i3]-M[Fe][gt2]}},
(* hh,Fe, Internal:bar[Fe]*) 
{{hh,Fe,Internal->bar[Fe]},chargefactor -> 1,{coup3L -> Cp[bar[Fe], Fe, VP][L][gt1,i3],coup3R -> Cp[bar[Fe], Fe, VP][R][gt1,i3],coup2L -> Cp[bar[Fe], Fe, hh][L][i3,i2,i1],coup2R -> Cp[bar[Fe], Fe, hh][R][i3,i2,i1],coup1L -> Cp[bar[Fe], Fe, hh][L][i2,gt2,i1],coup1R -> Cp[bar[Fe], Fe, hh][R][i2,gt2,i1]},{mS1 -> M[hh][i1],mF1 -> M[Fe][i2],MFin -> M[Fe][i3]-M[Fe][gt2]}},
(* VZ,Fe, Internal:bar[Fe]*) 
{{VZ,Fe,Internal->bar[Fe]},chargefactor -> 1,{coup3L -> Cp[bar[Fe], Fe, VP][L][gt1,i3],coup3R -> Cp[bar[Fe], Fe, VP][R][gt1,i3],coup2L -> Cp[bar[Fe], Fe, VZ][L][i3,i2],coup2R -> Cp[bar[Fe], Fe, VZ][R][i3,i2],coup1L -> Cp[bar[Fe], Fe, VZ][L][i2,gt2],coup1R -> Cp[bar[Fe], Fe, VZ][R][i2,gt2]},{mV1 -> M[VZ],mF1 -> M[Fe][i2],MFin -> M[Fe][i3]-M[Fe][gt2]}},
(* conj[Hm],Fv, Internal:bar[Fe]*) 
{{conj[Hm],Fv,Internal->bar[Fe]},chargefactor -> 1,{coup3L -> Cp[bar[Fe], Fe, VP][L][gt1,i3],coup3R -> Cp[bar[Fe], Fe, VP][R][gt1,i3],coup2L -> Cp[bar[Fe], Fv, Hm][L][i3,i2,i1],coup2R -> Cp[bar[Fe], Fv, Hm][R][i3,i2,i1],coup1L -> Cp[bar[Fv], Fe, conj[Hm]][L][i2,gt2,i1],coup1R -> Cp[bar[Fv], Fe, conj[Hm]][R][i2,gt2,i1]},{mS1 -> M[Hm][i1],mF1 -> 0,MFin -> M[Fe][i3]-M[Fe][gt2]}},
(* conj[VWm],Fv, Internal:bar[Fe]*) 
{{conj[VWm],Fv,Internal->bar[Fe]},chargefactor -> 1,{coup3L -> Cp[bar[Fe], Fe, VP][L][gt1,i3],coup3R -> Cp[bar[Fe], Fe, VP][R][gt1,i3],coup2L -> Cp[bar[Fe], Fv, VWm][L][i3,i2],coup2R -> Cp[bar[Fe], Fv, VWm][R][i3,i2],coup1L -> Cp[bar[Fv], Fe, conj[VWm]][L][i2,gt2],coup1R -> Cp[bar[Fv], Fe, conj[VWm]][R][i2,gt2]},{mV1 -> M[VWm],mF1 -> 0,MFin -> M[Fe][i3]-M[Fe][gt2]}}
(* Ah,bar[Fe],bar[Fe]*) 
{{Ah,bar[Fe],bar[Fe]},chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fe, Ah][L][gt1,i2,i1],coup1R -> Cp[bar[Fe], Fe, Ah][R][gt1,i2,i1],coup2L -> Cp[bar[Fe], Fe, Ah][L][i3,gt2,i1],coup2R -> Cp[bar[Fe], Fe, Ah][R][i3,gt2,i1],coup3L -> Cp[bar[Fe], Fe, VP][L][i2,i3],coup3R -> Cp[bar[Fe], Fe, VP][R][i2,i3]},},
(* Fv,conj[Hm],conj[Hm]*) 
{{Fv,conj[Hm],conj[Hm]},chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fv, Hm][L][gt1,i1,i2],coup1R -> Cp[bar[Fe], Fv, Hm][R][gt1,i1,i2],coup2L -> Cp[bar[Fv], Fe, conj[Hm]][L][i1,gt2,i3],coup2R -> Cp[bar[Fv], Fe, conj[Hm]][R][i1,gt2,i3],coup3 -> Cp[Hm, conj[Hm], VP][i3,i2]},},
(* Fv,conj[VWm],conj[Hm]*) 
{{Fv,conj[VWm],conj[Hm]},chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fv, VWm][L][gt1,i1],coup1R -> Cp[bar[Fe], Fv, VWm][R][gt1,i1],coup2L -> Cp[bar[Fv], Fe, conj[Hm]][L][i1,gt2,i3],coup2R -> Cp[bar[Fv], Fe, conj[Hm]][R][i1,gt2,i3],coup3 -> Cp[Hm, conj[VWm], VP][i3]},},
(* Fv,conj[Hm],conj[VWm]*) 
{{Fv,conj[Hm],conj[VWm]},chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fv, Hm][L][gt1,i1,i2],coup1R -> Cp[bar[Fe], Fv, Hm][R][gt1,i1,i2],coup2L -> Cp[bar[Fv], Fe, conj[VWm]][L][i1,gt2],coup2R -> Cp[bar[Fv], Fe, conj[VWm]][R][i1,gt2],coup3 -> Cp[conj[Hm], VP, VWm][i2]},},
(* Fv,conj[VWm],conj[VWm]*) 
{{Fv,conj[VWm],conj[VWm]},chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fv, VWm][L][gt1,i1],coup1R -> Cp[bar[Fe], Fv, VWm][R][gt1,i1],coup2L -> Cp[bar[Fv], Fe, conj[VWm]][L][i1,gt2],coup2R -> Cp[bar[Fv], Fe, conj[VWm]][R][i1,gt2],coup3 -> Cp[conj[VWm], VP, VWm]},},
(* hh,bar[Fe],bar[Fe]*) 
{{hh,bar[Fe],bar[Fe]},chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fe, hh][L][gt1,i2,i1],coup1R -> Cp[bar[Fe], Fe, hh][R][gt1,i2,i1],coup2L -> Cp[bar[Fe], Fe, hh][L][i3,gt2,i1],coup2R -> Cp[bar[Fe], Fe, hh][R][i3,gt2,i1],coup3L -> Cp[bar[Fe], Fe, VP][L][i2,i3],coup3R -> Cp[bar[Fe], Fe, VP][R][i2,i3]},},
(* VZ,bar[Fe],bar[Fe]*) 
{{VZ,bar[Fe],bar[Fe]},chargefactor -> 1,{coup1L -> Cp[bar[Fe], Fe, VZ][L][gt1,i2],coup1R -> Cp[bar[Fe], Fe, VZ][R][gt1,i2],coup2L -> Cp[bar[Fe], Fe, VZ][L][i3,gt2],coup2R -> Cp[bar[Fe], Fe, VZ][R][i3,gt2],coup3L -> Cp[bar[Fe], Fe, VP][L][i2,i3],coup3R -> Cp[bar[Fe], Fe, VP][R][i2,i3]},}
};