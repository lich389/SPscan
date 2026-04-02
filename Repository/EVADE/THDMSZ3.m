(* ::Package:: *)

name = "THDMSZ3";

Phi1 = {{(vh1rp + I vh1ip)}, {1/Sqrt[2] (vh1r0 + I*vh1i0)}};
Phi2 = {{(vh2rp + I vh2ip)}, {1/Sqrt[2] (vh2r0 + I*vh2i0)}};
PhiS = 1/Sqrt[2]*(vhsr0 + I*vhsi0);
PhiSCC = 1/Sqrt[2]*(vhsr0 - I*vhsi0);

V = ComplexExpand[m11sq ConjugateTranspose[Phi1].Phi1
		+ m22sq ConjugateTranspose[Phi2].Phi2
		- m12sq (ConjugateTranspose[Phi1].Phi2 + ConjugateTranspose[Phi2].Phi1)
		+ mssq PhiSCC*PhiS
		+ L1/2 (ConjugateTranspose[Phi1].Phi1)^2
		+ L2/2 (ConjugateTranspose[Phi2].Phi2)^2
		+ L3 ConjugateTranspose[Phi1].Phi1*ConjugateTranspose[Phi2].Phi2
		+ L4 ConjugateTranspose[Phi1].Phi2*ConjugateTranspose[Phi2].Phi1
		+ mus1/6 (PhiS^3 + PhiSCC^3)
		+ mu12 (PhiS*ConjugateTranspose[Phi1].Phi2 + PhiSCC*ConjugateTranspose[Phi2].Phi1)
		+ K3/4 PhiSCC*PhiS*PhiSCC*PhiS
		+ K1 (PhiSCC*PhiS)*(ConjugateTranspose[Phi1].Phi1)
		+ K2 (PhiSCC*PhiS)*(ConjugateTranspose[Phi2].Phi2)][[1,1]];

fields = {vh1r0, vh1i0, vh2r0, vh2i0, vhsr0, vhsi0, vh1rp, vh1ip, vh2rp, vh2ip};
parameters = {beta, vSM, vs, L1, L2, L3, L4, K1, K2, K3, mus1, mu12, m12sq, m11sq, m22sq, mssq};
ewvacuum = {vh1r0 -> Cos[beta]*vSM*Sqrt[2] + vh1r0, vh2r0 -> Sin[beta]*vSM*Sqrt[2] + vh2r0, vhsr0 -> vs*Sqrt[2] + vhsr0};

generateTHDMSZ3[]:= generateModel[name,V,fields,parameters,ewvacuum]
