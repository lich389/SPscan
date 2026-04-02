name = "2HDMS_z2p";

Phi1 = {{1/Sqrt[2] (vh1rp + I vh1ip)}, {1/Sqrt[2] (vh1r0 + I*vh1i0)}};
Phi2 = {{1/Sqrt[2] (vh2rp + I vh2ip)}, {1/Sqrt[2] (vh2r0 + I*vh2i0)}};
PhiS = vhsr0 + I*vhsi0;
V = ComplexExpand[m11sq ConjugateTranspose[Phi1].Phi1
		+ m22sq ConjugateTranspose[Phi2].Phi2
		- m12sq (ConjugateTranspose[Phi1].Phi2 + ConjugateTranspose[Phi2].Phi1)
		+ 1/2 mssq Conjugate[PhiS]*PhiS 
                + 1/2 mssqc (PhiS^2 + Conjugate[PhiS]^2)
            	+ L1/2 (ConjugateTranspose[Phi1].Phi1)^2
		+ L2/2 (ConjugateTranspose[Phi2].Phi2)^2
                + L6/8 (Conjugate[PhiS]*PhiS)^2
         	+ L3 ConjugateTranspose[Phi1].Phi1*ConjugateTranspose[Phi2].Phi2
		+ L4 ConjugateTranspose[Phi1].Phi2*ConjugateTranspose[Phi2].Phi1
		+ L5/2 ((ConjugateTranspose[Phi1].Phi2)^2 + (ConjugateTranspose[Phi2].Phi1)^2)
                + L9/24 (PhiS*PhiS*PhiS*PhiS + Conjugate[PhiS]*Conjugate[PhiS]*Conjugate[PhiS]*Conjugate[PhiS])
                + L10/6 (Conjugate[PhiS]*PhiS*PhiS*PhiS + Conjugate[PhiS]*PhiS*Conjugate[PhiS]*Conjugate[PhiS])
                + L7/2 (ConjugateTranspose[Phi1].Phi1) Conjugate[PhiS]*PhiS
                + L8/2 (ConjugateTranspose[Phi2].Phi2) Conjugate[PhiS]*PhiS
                + L11 ((ConjugateTranspose[Phi1].Phi1) PhiS*PhiS + (ConjugateTranspose[Phi1].Phi1) Conjugate[PhiS]*Conjugate[PhiS])
                + L12 ((ConjugateTranspose[Phi2].Phi2) PhiS*PhiS + (ConjugateTranspose[Phi2].Phi2) Conjugate[PhiS]*Conjugate[PhiS])][[1,1]];

fields = {vh1r0, vh1i0, vh2r0, vh2i0, vhsr0, vhsi0, vh1rp, vh1ip, vh2rp, vh2ip};
parameters = {beta, vSM, vs, va, L1, L2, L3, L4, L5, L6, L7, L8, m12sq, m11sq, m22sq, mssq, mssqc, L9, L10, L11, L12};
ewvacuum = {vh1r0 -> Cos[beta]*vSM + vh1r0, vh2r0 -> Sin[beta]*vSM + vh2r0, vhsr0 -> vs + vhsr0, vhsi0 -> va + vhsi0};

generate2HDMS[]:= generateModel[name,V,fields,parameters,ewvacuum]


