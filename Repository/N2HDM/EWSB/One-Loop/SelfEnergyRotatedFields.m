{2*(-rMS/2 + B0[p^2, Mass2[VZ], Mass2[VZ]])*conj[Cp[Uhh[{gO2}], VZ, VZ]]*
   Cp[Uhh[{gO1}], VZ, VZ] + 4*(-rMS/2 + B0[p^2, Mass2[VWm], Mass2[VWm]])*
   conj[Cp[Uhh[{gO2}], conj[VWm], VWm]]*Cp[Uhh[{gO1}], conj[VWm], VWm] - 
  B0[p^2, Mass2[gWm], Mass2[gWm]]*Cp[Uhh[{gO1}], bar[gWm], gWm]*
   Cp[Uhh[{gO2}], bar[gWm], gWm] - B0[p^2, Mass2[gWmC], Mass2[gWmC]]*
   Cp[Uhh[{gO1}], bar[gWmC], gWmC]*Cp[Uhh[{gO2}], bar[gWmC], gWmC] - 
  B0[p^2, Mass2[gZ], Mass2[gZ]]*Cp[Uhh[{gO1}], bar[gZ], gZ]*
   Cp[Uhh[{gO2}], bar[gZ], gZ] + 4*Cp[Uhh[{gO1}], Uhh[{gO2}], conj[VWm], VWm]*
   (A0[Mass2[VWm]] - (rMS*Mass2[VWm])/2) + 
  2*Cp[Uhh[{gO1}], Uhh[{gO2}], VZ, VZ]*(A0[Mass2[VZ]] - (rMS*Mass2[VZ])/2) - 
  sum[gI1, 1, 2, A0[Mass2[Ah[{gI1}]]]*Cp[Uhh[{gO1}], Uhh[{gO2}], Ah[{gI1}], 
      Ah[{gI1}]]]/2 - sum[gI1, 1, 2, A0[Mass2[Hm[{gI1}]]]*
    Cp[Uhh[{gO1}], Uhh[{gO2}], conj[Hm[{gI1}]], Hm[{gI1}]]] + 
  sum[gI1, 1, 2, sum[gI2, 1, 2, B0[p^2, Mass2[Ah[{gI1}]], Mass2[Ah[{gI2}]]]*
      conj[Cp[Uhh[{gO2}], Ah[{gI1}], Ah[{gI2}]]]*Cp[Uhh[{gO1}], Ah[{gI1}], 
       Ah[{gI2}]]]]/2 + sum[gI1, 1, 2, sum[gI2, 1, 2, 
    B0[p^2, Mass2[Hm[{gI1}]], Mass2[Hm[{gI2}]]]*
     conj[Cp[Uhh[{gO2}], conj[Hm[{gI1}]], Hm[{gI2}]]]*
     Cp[Uhh[{gO1}], conj[Hm[{gI1}]], Hm[{gI2}]]]] - 
  sum[gI1, 1, 3, A0[Mass2[hh[{gI1}]]]*Cp[Uhh[{gO1}], Uhh[{gO2}], hh[{gI1}], 
      hh[{gI1}]]]/2 + sum[gI1, 1, 3, sum[gI2, 1, 2, 
    B0[p^2, Mass2[hh[{gI1}]], Mass2[Ah[{gI2}]]]*
     conj[Cp[Uhh[{gO2}], hh[{gI1}], Ah[{gI2}]]]*Cp[Uhh[{gO1}], hh[{gI1}], 
      Ah[{gI2}]]]] + sum[gI1, 1, 3, sum[gI2, 1, 3, 
     B0[p^2, Mass2[hh[{gI1}]], Mass2[hh[{gI2}]]]*
      conj[Cp[Uhh[{gO2}], hh[{gI1}], hh[{gI2}]]]*Cp[Uhh[{gO1}], hh[{gI1}], 
       hh[{gI2}]]]]/2 - 
  6*sum[gI1, 1, 3, Mass[Fd[{gI1}]]*sum[gI2, 1, 3, 
      B0[p^2, Mass2[Fd[{gI1}]], Mass2[Fd[{gI2}]]]*Mass[Fd[{gI2}]]*
       (conj[Cp[Uhh[{gO2}], bar[Fd[{gI1}]], Fd[{gI2}]][PR]]*
         Cp[Uhh[{gO1}], bar[Fd[{gI1}]], Fd[{gI2}]][PL] + 
        conj[Cp[Uhh[{gO2}], bar[Fd[{gI1}]], Fd[{gI2}]][PL]]*
         Cp[Uhh[{gO1}], bar[Fd[{gI1}]], Fd[{gI2}]][PR])]] + 
  3*sum[gI1, 1, 3, sum[gI2, 1, 3, G0[p^2, Mass2[Fd[{gI1}]], Mass2[Fd[{gI2}]]]*
      (conj[Cp[Uhh[{gO2}], bar[Fd[{gI1}]], Fd[{gI2}]][PL]]*
        Cp[Uhh[{gO1}], bar[Fd[{gI1}]], Fd[{gI2}]][PL] + 
       conj[Cp[Uhh[{gO2}], bar[Fd[{gI1}]], Fd[{gI2}]][PR]]*
        Cp[Uhh[{gO1}], bar[Fd[{gI1}]], Fd[{gI2}]][PR])]] - 
  2*sum[gI1, 1, 3, Mass[Fe[{gI1}]]*sum[gI2, 1, 3, 
      B0[p^2, Mass2[Fe[{gI1}]], Mass2[Fe[{gI2}]]]*Mass[Fe[{gI2}]]*
       (conj[Cp[Uhh[{gO2}], bar[Fe[{gI1}]], Fe[{gI2}]][PR]]*
         Cp[Uhh[{gO1}], bar[Fe[{gI1}]], Fe[{gI2}]][PL] + 
        conj[Cp[Uhh[{gO2}], bar[Fe[{gI1}]], Fe[{gI2}]][PL]]*
         Cp[Uhh[{gO1}], bar[Fe[{gI1}]], Fe[{gI2}]][PR])]] + 
  sum[gI1, 1, 3, sum[gI2, 1, 3, G0[p^2, Mass2[Fe[{gI1}]], Mass2[Fe[{gI2}]]]*
     (conj[Cp[Uhh[{gO2}], bar[Fe[{gI1}]], Fe[{gI2}]][PL]]*
       Cp[Uhh[{gO1}], bar[Fe[{gI1}]], Fe[{gI2}]][PL] + 
      conj[Cp[Uhh[{gO2}], bar[Fe[{gI1}]], Fe[{gI2}]][PR]]*
       Cp[Uhh[{gO1}], bar[Fe[{gI1}]], Fe[{gI2}]][PR])]] - 
  6*sum[gI1, 1, 3, Mass[Fu[{gI1}]]*sum[gI2, 1, 3, 
      B0[p^2, Mass2[Fu[{gI1}]], Mass2[Fu[{gI2}]]]*Mass[Fu[{gI2}]]*
       (conj[Cp[Uhh[{gO2}], bar[Fu[{gI1}]], Fu[{gI2}]][PR]]*
         Cp[Uhh[{gO1}], bar[Fu[{gI1}]], Fu[{gI2}]][PL] + 
        conj[Cp[Uhh[{gO2}], bar[Fu[{gI1}]], Fu[{gI2}]][PL]]*
         Cp[Uhh[{gO1}], bar[Fu[{gI1}]], Fu[{gI2}]][PR])]] + 
  3*sum[gI1, 1, 3, sum[gI2, 1, 3, G0[p^2, Mass2[Fu[{gI1}]], Mass2[Fu[{gI2}]]]*
      (conj[Cp[Uhh[{gO2}], bar[Fu[{gI1}]], Fu[{gI2}]][PL]]*
        Cp[Uhh[{gO1}], bar[Fu[{gI1}]], Fu[{gI2}]][PL] + 
       conj[Cp[Uhh[{gO2}], bar[Fu[{gI1}]], Fu[{gI2}]][PR]]*
        Cp[Uhh[{gO1}], bar[Fu[{gI1}]], Fu[{gI2}]][PR])]] + 
  sum[gI2, 1, 2, conj[Cp[Uhh[{gO2}], VZ, Ah[{gI2}]]]*
    Cp[Uhh[{gO1}], VZ, Ah[{gI2}]]*F0[p^2, Mass2[Ah[{gI2}]], Mass2[VZ]]] + 
  2*sum[gI2, 1, 2, conj[Cp[Uhh[{gO2}], conj[VWm], Hm[{gI2}]]]*
     Cp[Uhh[{gO1}], conj[VWm], Hm[{gI2}]]*F0[p^2, Mass2[Hm[{gI2}]], 
      Mass2[VWm]]], -(B0[p^2, Mass2[gWm], Mass2[gWm]]*
    Cp[UAh[{gO1}], bar[gWm], gWm]*Cp[UAh[{gO2}], bar[gWm], gWm]) - 
  B0[p^2, Mass2[gWmC], Mass2[gWmC]]*Cp[UAh[{gO1}], bar[gWmC], gWmC]*
   Cp[UAh[{gO2}], bar[gWmC], gWmC] + 
  4*Cp[UAh[{gO1}], UAh[{gO2}], conj[VWm], VWm]*
   (A0[Mass2[VWm]] - (rMS*Mass2[VWm])/2) + 
  2*Cp[UAh[{gO1}], UAh[{gO2}], VZ, VZ]*(A0[Mass2[VZ]] - (rMS*Mass2[VZ])/2) - 
  sum[gI1, 1, 2, A0[Mass2[Ah[{gI1}]]]*Cp[UAh[{gO1}], UAh[{gO2}], Ah[{gI1}], 
      Ah[{gI1}]]]/2 - sum[gI1, 1, 2, A0[Mass2[Hm[{gI1}]]]*
    Cp[UAh[{gO1}], UAh[{gO2}], conj[Hm[{gI1}]], Hm[{gI1}]]] + 
  sum[gI1, 1, 2, sum[gI2, 1, 2, B0[p^2, Mass2[Ah[{gI1}]], Mass2[Ah[{gI2}]]]*
      conj[Cp[UAh[{gO2}], Ah[{gI1}], Ah[{gI2}]]]*Cp[UAh[{gO1}], Ah[{gI1}], 
       Ah[{gI2}]]]]/2 + sum[gI1, 1, 2, sum[gI2, 1, 2, 
    B0[p^2, Mass2[Hm[{gI1}]], Mass2[Hm[{gI2}]]]*
     conj[Cp[UAh[{gO2}], conj[Hm[{gI1}]], Hm[{gI2}]]]*
     Cp[UAh[{gO1}], conj[Hm[{gI1}]], Hm[{gI2}]]]] - 
  sum[gI1, 1, 3, A0[Mass2[hh[{gI1}]]]*Cp[UAh[{gO1}], UAh[{gO2}], hh[{gI1}], 
      hh[{gI1}]]]/2 + sum[gI1, 1, 3, sum[gI2, 1, 2, 
    B0[p^2, Mass2[hh[{gI1}]], Mass2[Ah[{gI2}]]]*
     conj[Cp[UAh[{gO2}], hh[{gI1}], Ah[{gI2}]]]*Cp[UAh[{gO1}], hh[{gI1}], 
      Ah[{gI2}]]]] + sum[gI1, 1, 3, sum[gI2, 1, 3, 
     B0[p^2, Mass2[hh[{gI1}]], Mass2[hh[{gI2}]]]*
      conj[Cp[UAh[{gO2}], hh[{gI1}], hh[{gI2}]]]*Cp[UAh[{gO1}], hh[{gI1}], 
       hh[{gI2}]]]]/2 - 
  6*sum[gI1, 1, 3, Mass[Fd[{gI1}]]*sum[gI2, 1, 3, 
      B0[p^2, Mass2[Fd[{gI1}]], Mass2[Fd[{gI2}]]]*Mass[Fd[{gI2}]]*
       (conj[Cp[UAh[{gO2}], bar[Fd[{gI1}]], Fd[{gI2}]][PR]]*
         Cp[UAh[{gO1}], bar[Fd[{gI1}]], Fd[{gI2}]][PL] + 
        conj[Cp[UAh[{gO2}], bar[Fd[{gI1}]], Fd[{gI2}]][PL]]*
         Cp[UAh[{gO1}], bar[Fd[{gI1}]], Fd[{gI2}]][PR])]] + 
  3*sum[gI1, 1, 3, sum[gI2, 1, 3, G0[p^2, Mass2[Fd[{gI1}]], Mass2[Fd[{gI2}]]]*
      (conj[Cp[UAh[{gO2}], bar[Fd[{gI1}]], Fd[{gI2}]][PL]]*
        Cp[UAh[{gO1}], bar[Fd[{gI1}]], Fd[{gI2}]][PL] + 
       conj[Cp[UAh[{gO2}], bar[Fd[{gI1}]], Fd[{gI2}]][PR]]*
        Cp[UAh[{gO1}], bar[Fd[{gI1}]], Fd[{gI2}]][PR])]] - 
  2*sum[gI1, 1, 3, Mass[Fe[{gI1}]]*sum[gI2, 1, 3, 
      B0[p^2, Mass2[Fe[{gI1}]], Mass2[Fe[{gI2}]]]*Mass[Fe[{gI2}]]*
       (conj[Cp[UAh[{gO2}], bar[Fe[{gI1}]], Fe[{gI2}]][PR]]*
         Cp[UAh[{gO1}], bar[Fe[{gI1}]], Fe[{gI2}]][PL] + 
        conj[Cp[UAh[{gO2}], bar[Fe[{gI1}]], Fe[{gI2}]][PL]]*
         Cp[UAh[{gO1}], bar[Fe[{gI1}]], Fe[{gI2}]][PR])]] + 
  sum[gI1, 1, 3, sum[gI2, 1, 3, G0[p^2, Mass2[Fe[{gI1}]], Mass2[Fe[{gI2}]]]*
     (conj[Cp[UAh[{gO2}], bar[Fe[{gI1}]], Fe[{gI2}]][PL]]*
       Cp[UAh[{gO1}], bar[Fe[{gI1}]], Fe[{gI2}]][PL] + 
      conj[Cp[UAh[{gO2}], bar[Fe[{gI1}]], Fe[{gI2}]][PR]]*
       Cp[UAh[{gO1}], bar[Fe[{gI1}]], Fe[{gI2}]][PR])]] - 
  6*sum[gI1, 1, 3, Mass[Fu[{gI1}]]*sum[gI2, 1, 3, 
      B0[p^2, Mass2[Fu[{gI1}]], Mass2[Fu[{gI2}]]]*Mass[Fu[{gI2}]]*
       (conj[Cp[UAh[{gO2}], bar[Fu[{gI1}]], Fu[{gI2}]][PR]]*
         Cp[UAh[{gO1}], bar[Fu[{gI1}]], Fu[{gI2}]][PL] + 
        conj[Cp[UAh[{gO2}], bar[Fu[{gI1}]], Fu[{gI2}]][PL]]*
         Cp[UAh[{gO1}], bar[Fu[{gI1}]], Fu[{gI2}]][PR])]] + 
  3*sum[gI1, 1, 3, sum[gI2, 1, 3, G0[p^2, Mass2[Fu[{gI1}]], Mass2[Fu[{gI2}]]]*
      (conj[Cp[UAh[{gO2}], bar[Fu[{gI1}]], Fu[{gI2}]][PL]]*
        Cp[UAh[{gO1}], bar[Fu[{gI1}]], Fu[{gI2}]][PL] + 
       conj[Cp[UAh[{gO2}], bar[Fu[{gI1}]], Fu[{gI2}]][PR]]*
        Cp[UAh[{gO1}], bar[Fu[{gI1}]], Fu[{gI2}]][PR])]] + 
  2*sum[gI2, 1, 2, conj[Cp[UAh[{gO2}], conj[VWm], Hm[{gI2}]]]*
     Cp[UAh[{gO1}], conj[VWm], Hm[{gI2}]]*F0[p^2, Mass2[Hm[{gI2}]], 
      Mass2[VWm]]] + sum[gI2, 1, 3, conj[Cp[UAh[{gO2}], VZ, hh[{gI2}]]]*
    Cp[UAh[{gO1}], VZ, hh[{gI2}]]*F0[p^2, Mass2[hh[{gI2}]], Mass2[VZ]]], 
 4*(-rMS/2 + B0[p^2, 0, Mass2[VWm]])*conj[Cp[conj[UHm[{gO2}]], VWm, VP]]*
   Cp[conj[UHm[{gO1}]], VWm, VP] + 
  4*(-rMS/2 + B0[p^2, Mass2[VWm], Mass2[VZ]])*
   conj[Cp[conj[UHm[{gO2}]], VZ, VWm]]*Cp[conj[UHm[{gO1}]], VZ, VWm] - 
  B0[p^2, Mass2[gZ], Mass2[gWmC]]*Cp[conj[UHm[{gO1}]], bar[gWmC], gZ]*
   Cp[UHm[{gO2}], gWmC, bar[gZ]] - B0[p^2, Mass2[gWm], Mass2[gZ]]*
   Cp[conj[UHm[{gO1}]], bar[gZ], gWm]*Cp[UHm[{gO2}], gZ, bar[gWm]] + 
  4*Cp[UHm[{gO1}], conj[UHm[{gO2}]], conj[VWm], VWm]*
   (A0[Mass2[VWm]] - (rMS*Mass2[VWm])/2) + 
  2*Cp[UHm[{gO1}], conj[UHm[{gO2}]], VZ, VZ]*(A0[Mass2[VZ]] - 
    (rMS*Mass2[VZ])/2) - sum[gI1, 1, 2, A0[Mass2[Ah[{gI1}]]]*
     Cp[UHm[{gO1}], conj[UHm[{gO2}]], Ah[{gI1}], Ah[{gI1}]]]/2 - 
  sum[gI1, 1, 2, A0[Mass2[Hm[{gI1}]]]*Cp[UHm[{gO1}], conj[UHm[{gO2}]], 
     conj[Hm[{gI1}]], Hm[{gI1}]]] + sum[gI1, 1, 2, 
   sum[gI2, 1, 2, B0[p^2, Mass2[Hm[{gI1}]], Mass2[Ah[{gI2}]]]*
     conj[Cp[conj[UHm[{gO2}]], Hm[{gI1}], Ah[{gI2}]]]*
     Cp[conj[UHm[{gO1}]], Hm[{gI1}], Ah[{gI2}]]]] + 
  sum[gI1, 1, 2, sum[gI2, 1, 3, B0[p^2, Mass2[Hm[{gI1}]], Mass2[hh[{gI2}]]]*
     conj[Cp[conj[UHm[{gO2}]], Hm[{gI1}], hh[{gI2}]]]*
     Cp[conj[UHm[{gO1}]], Hm[{gI1}], hh[{gI2}]]]] - 
  sum[gI1, 1, 3, A0[Mass2[hh[{gI1}]]]*Cp[UHm[{gO1}], conj[UHm[{gO2}]], 
      hh[{gI1}], hh[{gI1}]]]/2 - 
  6*sum[gI1, 1, 3, Mass[Fu[{gI1}]]*sum[gI2, 1, 3, 
      B0[p^2, Mass2[Fu[{gI1}]], Mass2[Fd[{gI2}]]]*Mass[Fd[{gI2}]]*
       (conj[Cp[conj[UHm[{gO2}]], bar[Fu[{gI1}]], Fd[{gI2}]][PR]]*
         Cp[conj[UHm[{gO1}]], bar[Fu[{gI1}]], Fd[{gI2}]][PL] + 
        conj[Cp[conj[UHm[{gO2}]], bar[Fu[{gI1}]], Fd[{gI2}]][PL]]*
         Cp[conj[UHm[{gO1}]], bar[Fu[{gI1}]], Fd[{gI2}]][PR])]] + 
  3*sum[gI1, 1, 3, sum[gI2, 1, 3, G0[p^2, Mass2[Fu[{gI1}]], Mass2[Fd[{gI2}]]]*
      (conj[Cp[conj[UHm[{gO2}]], bar[Fu[{gI1}]], Fd[{gI2}]][PL]]*
        Cp[conj[UHm[{gO1}]], bar[Fu[{gI1}]], Fd[{gI2}]][PL] + 
       conj[Cp[conj[UHm[{gO2}]], bar[Fu[{gI1}]], Fd[{gI2}]][PR]]*
        Cp[conj[UHm[{gO1}]], bar[Fu[{gI1}]], Fd[{gI2}]][PR])]] - 
  2*sum[gI1, 1, 3, Mass[Fv[{gI1}]]*sum[gI2, 1, 3, 
      B0[p^2, Mass2[Fv[{gI1}]], Mass2[Fe[{gI2}]]]*Mass[Fe[{gI2}]]*
       (conj[Cp[conj[UHm[{gO2}]], bar[Fv[{gI1}]], Fe[{gI2}]][PR]]*
         Cp[conj[UHm[{gO1}]], bar[Fv[{gI1}]], Fe[{gI2}]][PL] + 
        conj[Cp[conj[UHm[{gO2}]], bar[Fv[{gI1}]], Fe[{gI2}]][PL]]*
         Cp[conj[UHm[{gO1}]], bar[Fv[{gI1}]], Fe[{gI2}]][PR])]] + 
  sum[gI1, 1, 3, sum[gI2, 1, 3, G0[p^2, Mass2[Fv[{gI1}]], Mass2[Fe[{gI2}]]]*
     (conj[Cp[conj[UHm[{gO2}]], bar[Fv[{gI1}]], Fe[{gI2}]][PL]]*
       Cp[conj[UHm[{gO1}]], bar[Fv[{gI1}]], Fe[{gI2}]][PL] + 
      conj[Cp[conj[UHm[{gO2}]], bar[Fv[{gI1}]], Fe[{gI2}]][PR]]*
       Cp[conj[UHm[{gO1}]], bar[Fv[{gI1}]], Fe[{gI2}]][PR])]] + 
  sum[gI2, 1, 2, conj[Cp[conj[UHm[{gO2}]], VWm, Ah[{gI2}]]]*
    Cp[conj[UHm[{gO1}]], VWm, Ah[{gI2}]]*F0[p^2, Mass2[Ah[{gI2}]], 
     Mass2[VWm]]] + sum[gI2, 1, 2, conj[Cp[conj[UHm[{gO2}]], VP, Hm[{gI2}]]]*
    Cp[conj[UHm[{gO1}]], VP, Hm[{gI2}]]*F0[p^2, Mass2[Hm[{gI2}]], 0]] + 
  sum[gI2, 1, 2, conj[Cp[conj[UHm[{gO2}]], VZ, Hm[{gI2}]]]*
    Cp[conj[UHm[{gO1}]], VZ, Hm[{gI2}]]*F0[p^2, Mass2[Hm[{gI2}]], 
     Mass2[VZ]]] + sum[gI2, 1, 3, conj[Cp[conj[UHm[{gO2}]], VWm, hh[{gI2}]]]*
    Cp[conj[UHm[{gO1}]], VWm, hh[{gI2}]]*F0[p^2, Mass2[hh[{gI2}]], 
     Mass2[VWm]]], 
 {sum[gI1, 1, 2, sum[gI2, 1, 3, B0[p^2, Mass2[Fu[{gI2}]], Mass2[Hm[{gI1}]]]*
      conj[Cp[bar[UFd[{gO2}]], Hm[{gI1}], Fu[{gI2}]][PL]]*Mass[Fu[{gI2}]]*
      Cp[bar[UFd[{gO1}]], Hm[{gI1}], Fu[{gI2}]][PR]]] + 
   sum[gI1, 1, 3, Mass[Fd[{gI1}]]*sum[gI2, 1, 2, 
      B0[p^2, Mass2[Fd[{gI1}]], Mass2[Ah[{gI2}]]]*
       conj[Cp[bar[UFd[{gO2}]], Fd[{gI1}], Ah[{gI2}]][PL]]*
       Cp[bar[UFd[{gO1}]], Fd[{gI1}], Ah[{gI2}]][PR]]] + 
   sum[gI1, 1, 3, sum[gI2, 1, 3, B0[p^2, Mass2[Fd[{gI2}]], Mass2[hh[{gI1}]]]*
      conj[Cp[bar[UFd[{gO2}]], hh[{gI1}], Fd[{gI2}]][PL]]*Mass[Fd[{gI2}]]*
      Cp[bar[UFd[{gO1}]], hh[{gI1}], Fd[{gI2}]][PR]]] - 
   (16*sum[gI2, 1, 3, (-rMS/2 + B0[p^2, Mass2[Fd[{gI2}]], 0])*
       conj[Cp[bar[UFd[{gO2}]], VG, Fd[{gI2}]][PR]]*Mass[Fd[{gI2}]]*
       Cp[bar[UFd[{gO1}]], VG, Fd[{gI2}]][PL]])/3 - 
   4*sum[gI2, 1, 3, (-rMS/2 + B0[p^2, Mass2[Fd[{gI2}]], 0])*
      conj[Cp[bar[UFd[{gO2}]], VP, Fd[{gI2}]][PR]]*Mass[Fd[{gI2}]]*
      Cp[bar[UFd[{gO1}]], VP, Fd[{gI2}]][PL]] - 
   4*sum[gI2, 1, 3, (-rMS/2 + B0[p^2, Mass2[Fu[{gI2}]], Mass2[VWm]])*
      conj[Cp[bar[UFd[{gO2}]], VWm, Fu[{gI2}]][PR]]*Mass[Fu[{gI2}]]*
      Cp[bar[UFd[{gO1}]], VWm, Fu[{gI2}]][PL]] - 
   4*sum[gI2, 1, 3, (-rMS/2 + B0[p^2, Mass2[Fd[{gI2}]], Mass2[VZ]])*
      conj[Cp[bar[UFd[{gO2}]], VZ, Fd[{gI2}]][PR]]*Mass[Fd[{gI2}]]*
      Cp[bar[UFd[{gO1}]], VZ, Fd[{gI2}]][PL]], 
  -sum[gI1, 1, 2, sum[gI2, 1, 3, B1[p^2, Mass2[Fu[{gI2}]], Mass2[Hm[{gI1}]]]*
        conj[Cp[bar[UFd[{gO2}]], Hm[{gI1}], Fu[{gI2}]][PR]]*
        Cp[bar[UFd[{gO1}]], Hm[{gI1}], Fu[{gI2}]][PR]]]/2 - 
   sum[gI1, 1, 3, sum[gI2, 1, 2, B1[p^2, Mass2[Fd[{gI1}]], Mass2[Ah[{gI2}]]]*
       conj[Cp[bar[UFd[{gO2}]], Fd[{gI1}], Ah[{gI2}]][PR]]*
       Cp[bar[UFd[{gO1}]], Fd[{gI1}], Ah[{gI2}]][PR]]]/2 - 
   sum[gI1, 1, 3, sum[gI2, 1, 3, B1[p^2, Mass2[Fd[{gI2}]], Mass2[hh[{gI1}]]]*
       conj[Cp[bar[UFd[{gO2}]], hh[{gI1}], Fd[{gI2}]][PR]]*
       Cp[bar[UFd[{gO1}]], hh[{gI1}], Fd[{gI2}]][PR]]]/2 - 
   (4*sum[gI2, 1, 3, (rMS/2 + B1[p^2, Mass2[Fd[{gI2}]], 0])*
       conj[Cp[bar[UFd[{gO2}]], VG, Fd[{gI2}]][PL]]*
       Cp[bar[UFd[{gO1}]], VG, Fd[{gI2}]][PL]])/3 - 
   sum[gI2, 1, 3, (rMS/2 + B1[p^2, Mass2[Fd[{gI2}]], 0])*
     conj[Cp[bar[UFd[{gO2}]], VP, Fd[{gI2}]][PL]]*
     Cp[bar[UFd[{gO1}]], VP, Fd[{gI2}]][PL]] - 
   sum[gI2, 1, 3, (rMS/2 + B1[p^2, Mass2[Fu[{gI2}]], Mass2[VWm]])*
     conj[Cp[bar[UFd[{gO2}]], VWm, Fu[{gI2}]][PL]]*
     Cp[bar[UFd[{gO1}]], VWm, Fu[{gI2}]][PL]] - 
   sum[gI2, 1, 3, (rMS/2 + B1[p^2, Mass2[Fd[{gI2}]], Mass2[VZ]])*
     conj[Cp[bar[UFd[{gO2}]], VZ, Fd[{gI2}]][PL]]*
     Cp[bar[UFd[{gO1}]], VZ, Fd[{gI2}]][PL]], 
  -sum[gI1, 1, 2, sum[gI2, 1, 3, B1[p^2, Mass2[Fu[{gI2}]], Mass2[Hm[{gI1}]]]*
        conj[Cp[bar[UFd[{gO2}]], Hm[{gI1}], Fu[{gI2}]][PL]]*
        Cp[bar[UFd[{gO1}]], Hm[{gI1}], Fu[{gI2}]][PL]]]/2 - 
   sum[gI1, 1, 3, sum[gI2, 1, 2, B1[p^2, Mass2[Fd[{gI1}]], Mass2[Ah[{gI2}]]]*
       conj[Cp[bar[UFd[{gO2}]], Fd[{gI1}], Ah[{gI2}]][PL]]*
       Cp[bar[UFd[{gO1}]], Fd[{gI1}], Ah[{gI2}]][PL]]]/2 - 
   sum[gI1, 1, 3, sum[gI2, 1, 3, B1[p^2, Mass2[Fd[{gI2}]], Mass2[hh[{gI1}]]]*
       conj[Cp[bar[UFd[{gO2}]], hh[{gI1}], Fd[{gI2}]][PL]]*
       Cp[bar[UFd[{gO1}]], hh[{gI1}], Fd[{gI2}]][PL]]]/2 - 
   (4*sum[gI2, 1, 3, (rMS/2 + B1[p^2, Mass2[Fd[{gI2}]], 0])*
       conj[Cp[bar[UFd[{gO2}]], VG, Fd[{gI2}]][PR]]*
       Cp[bar[UFd[{gO1}]], VG, Fd[{gI2}]][PR]])/3 - 
   sum[gI2, 1, 3, (rMS/2 + B1[p^2, Mass2[Fd[{gI2}]], 0])*
     conj[Cp[bar[UFd[{gO2}]], VP, Fd[{gI2}]][PR]]*
     Cp[bar[UFd[{gO1}]], VP, Fd[{gI2}]][PR]] - 
   sum[gI2, 1, 3, (rMS/2 + B1[p^2, Mass2[Fu[{gI2}]], Mass2[VWm]])*
     conj[Cp[bar[UFd[{gO2}]], VWm, Fu[{gI2}]][PR]]*
     Cp[bar[UFd[{gO1}]], VWm, Fu[{gI2}]][PR]] - 
   sum[gI2, 1, 3, (rMS/2 + B1[p^2, Mass2[Fd[{gI2}]], Mass2[VZ]])*
     conj[Cp[bar[UFd[{gO2}]], VZ, Fd[{gI2}]][PR]]*
     Cp[bar[UFd[{gO1}]], VZ, Fd[{gI2}]][PR]]}, 
 {sum[gI1, 1, 2, sum[gI2, 1, 3, B0[p^2, Mass2[Fd[{gI2}]], Mass2[Hm[{gI1}]]]*
      conj[Cp[bar[UFu[{gO2}]], conj[Hm[{gI1}]], Fd[{gI2}]][PL]]*
      Mass[Fd[{gI2}]]*Cp[bar[UFu[{gO1}]], conj[Hm[{gI1}]], Fd[{gI2}]][PR]]] + 
   sum[gI1, 1, 3, Mass[Fu[{gI1}]]*sum[gI2, 1, 2, 
      B0[p^2, Mass2[Fu[{gI1}]], Mass2[Ah[{gI2}]]]*
       conj[Cp[bar[UFu[{gO2}]], Fu[{gI1}], Ah[{gI2}]][PL]]*
       Cp[bar[UFu[{gO1}]], Fu[{gI1}], Ah[{gI2}]][PR]]] + 
   sum[gI1, 1, 3, sum[gI2, 1, 3, B0[p^2, Mass2[Fu[{gI2}]], Mass2[hh[{gI1}]]]*
      conj[Cp[bar[UFu[{gO2}]], hh[{gI1}], Fu[{gI2}]][PL]]*Mass[Fu[{gI2}]]*
      Cp[bar[UFu[{gO1}]], hh[{gI1}], Fu[{gI2}]][PR]]] - 
   (16*sum[gI2, 1, 3, (-rMS/2 + B0[p^2, Mass2[Fu[{gI2}]], 0])*
       conj[Cp[bar[UFu[{gO2}]], VG, Fu[{gI2}]][PR]]*Mass[Fu[{gI2}]]*
       Cp[bar[UFu[{gO1}]], VG, Fu[{gI2}]][PL]])/3 - 
   4*sum[gI2, 1, 3, (-rMS/2 + B0[p^2, Mass2[Fu[{gI2}]], 0])*
      conj[Cp[bar[UFu[{gO2}]], VP, Fu[{gI2}]][PR]]*Mass[Fu[{gI2}]]*
      Cp[bar[UFu[{gO1}]], VP, Fu[{gI2}]][PL]] - 
   4*sum[gI2, 1, 3, (-rMS/2 + B0[p^2, Mass2[Fu[{gI2}]], Mass2[VZ]])*
      conj[Cp[bar[UFu[{gO2}]], VZ, Fu[{gI2}]][PR]]*Mass[Fu[{gI2}]]*
      Cp[bar[UFu[{gO1}]], VZ, Fu[{gI2}]][PL]] - 
   4*sum[gI2, 1, 3, (-rMS/2 + B0[p^2, Mass2[Fd[{gI2}]], Mass2[VWm]])*
      conj[Cp[bar[UFu[{gO2}]], conj[VWm], Fd[{gI2}]][PR]]*Mass[Fd[{gI2}]]*
      Cp[bar[UFu[{gO1}]], conj[VWm], Fd[{gI2}]][PL]], 
  -sum[gI1, 1, 2, sum[gI2, 1, 3, B1[p^2, Mass2[Fd[{gI2}]], Mass2[Hm[{gI1}]]]*
        conj[Cp[bar[UFu[{gO2}]], conj[Hm[{gI1}]], Fd[{gI2}]][PR]]*
        Cp[bar[UFu[{gO1}]], conj[Hm[{gI1}]], Fd[{gI2}]][PR]]]/2 - 
   sum[gI1, 1, 3, sum[gI2, 1, 2, B1[p^2, Mass2[Fu[{gI1}]], Mass2[Ah[{gI2}]]]*
       conj[Cp[bar[UFu[{gO2}]], Fu[{gI1}], Ah[{gI2}]][PR]]*
       Cp[bar[UFu[{gO1}]], Fu[{gI1}], Ah[{gI2}]][PR]]]/2 - 
   sum[gI1, 1, 3, sum[gI2, 1, 3, B1[p^2, Mass2[Fu[{gI2}]], Mass2[hh[{gI1}]]]*
       conj[Cp[bar[UFu[{gO2}]], hh[{gI1}], Fu[{gI2}]][PR]]*
       Cp[bar[UFu[{gO1}]], hh[{gI1}], Fu[{gI2}]][PR]]]/2 - 
   (4*sum[gI2, 1, 3, (rMS/2 + B1[p^2, Mass2[Fu[{gI2}]], 0])*
       conj[Cp[bar[UFu[{gO2}]], VG, Fu[{gI2}]][PL]]*
       Cp[bar[UFu[{gO1}]], VG, Fu[{gI2}]][PL]])/3 - 
   sum[gI2, 1, 3, (rMS/2 + B1[p^2, Mass2[Fu[{gI2}]], 0])*
     conj[Cp[bar[UFu[{gO2}]], VP, Fu[{gI2}]][PL]]*
     Cp[bar[UFu[{gO1}]], VP, Fu[{gI2}]][PL]] - 
   sum[gI2, 1, 3, (rMS/2 + B1[p^2, Mass2[Fu[{gI2}]], Mass2[VZ]])*
     conj[Cp[bar[UFu[{gO2}]], VZ, Fu[{gI2}]][PL]]*
     Cp[bar[UFu[{gO1}]], VZ, Fu[{gI2}]][PL]] - 
   sum[gI2, 1, 3, (rMS/2 + B1[p^2, Mass2[Fd[{gI2}]], Mass2[VWm]])*
     conj[Cp[bar[UFu[{gO2}]], conj[VWm], Fd[{gI2}]][PL]]*
     Cp[bar[UFu[{gO1}]], conj[VWm], Fd[{gI2}]][PL]], 
  -sum[gI1, 1, 2, sum[gI2, 1, 3, B1[p^2, Mass2[Fd[{gI2}]], Mass2[Hm[{gI1}]]]*
        conj[Cp[bar[UFu[{gO2}]], conj[Hm[{gI1}]], Fd[{gI2}]][PL]]*
        Cp[bar[UFu[{gO1}]], conj[Hm[{gI1}]], Fd[{gI2}]][PL]]]/2 - 
   sum[gI1, 1, 3, sum[gI2, 1, 2, B1[p^2, Mass2[Fu[{gI1}]], Mass2[Ah[{gI2}]]]*
       conj[Cp[bar[UFu[{gO2}]], Fu[{gI1}], Ah[{gI2}]][PL]]*
       Cp[bar[UFu[{gO1}]], Fu[{gI1}], Ah[{gI2}]][PL]]]/2 - 
   sum[gI1, 1, 3, sum[gI2, 1, 3, B1[p^2, Mass2[Fu[{gI2}]], Mass2[hh[{gI1}]]]*
       conj[Cp[bar[UFu[{gO2}]], hh[{gI1}], Fu[{gI2}]][PL]]*
       Cp[bar[UFu[{gO1}]], hh[{gI1}], Fu[{gI2}]][PL]]]/2 - 
   (4*sum[gI2, 1, 3, (rMS/2 + B1[p^2, Mass2[Fu[{gI2}]], 0])*
       conj[Cp[bar[UFu[{gO2}]], VG, Fu[{gI2}]][PR]]*
       Cp[bar[UFu[{gO1}]], VG, Fu[{gI2}]][PR]])/3 - 
   sum[gI2, 1, 3, (rMS/2 + B1[p^2, Mass2[Fu[{gI2}]], 0])*
     conj[Cp[bar[UFu[{gO2}]], VP, Fu[{gI2}]][PR]]*
     Cp[bar[UFu[{gO1}]], VP, Fu[{gI2}]][PR]] - 
   sum[gI2, 1, 3, (rMS/2 + B1[p^2, Mass2[Fu[{gI2}]], Mass2[VZ]])*
     conj[Cp[bar[UFu[{gO2}]], VZ, Fu[{gI2}]][PR]]*
     Cp[bar[UFu[{gO1}]], VZ, Fu[{gI2}]][PR]] - 
   sum[gI2, 1, 3, (rMS/2 + B1[p^2, Mass2[Fd[{gI2}]], Mass2[VWm]])*
     conj[Cp[bar[UFu[{gO2}]], conj[VWm], Fd[{gI2}]][PR]]*
     Cp[bar[UFu[{gO1}]], conj[VWm], Fd[{gI2}]][PR]]}, 
 {sum[gI1, 1, 2, sum[gI2, 1, 3, B0[p^2, Mass2[Fv[{gI2}]], Mass2[Hm[{gI1}]]]*
      conj[Cp[bar[UFe[{gO2}]], Hm[{gI1}], Fv[{gI2}]][PL]]*Mass[Fv[{gI2}]]*
      Cp[bar[UFe[{gO1}]], Hm[{gI1}], Fv[{gI2}]][PR]]] + 
   sum[gI1, 1, 3, Mass[Fe[{gI1}]]*sum[gI2, 1, 2, 
      B0[p^2, Mass2[Fe[{gI1}]], Mass2[Ah[{gI2}]]]*
       conj[Cp[bar[UFe[{gO2}]], Fe[{gI1}], Ah[{gI2}]][PL]]*
       Cp[bar[UFe[{gO1}]], Fe[{gI1}], Ah[{gI2}]][PR]]] + 
   sum[gI1, 1, 3, sum[gI2, 1, 3, B0[p^2, Mass2[Fe[{gI2}]], Mass2[hh[{gI1}]]]*
      conj[Cp[bar[UFe[{gO2}]], hh[{gI1}], Fe[{gI2}]][PL]]*Mass[Fe[{gI2}]]*
      Cp[bar[UFe[{gO1}]], hh[{gI1}], Fe[{gI2}]][PR]]] - 
   4*sum[gI2, 1, 3, (-rMS/2 + B0[p^2, Mass2[Fe[{gI2}]], 0])*
      conj[Cp[bar[UFe[{gO2}]], VP, Fe[{gI2}]][PR]]*Mass[Fe[{gI2}]]*
      Cp[bar[UFe[{gO1}]], VP, Fe[{gI2}]][PL]] - 
   4*sum[gI2, 1, 3, (-rMS/2 + B0[p^2, Mass2[Fv[{gI2}]], Mass2[VWm]])*
      conj[Cp[bar[UFe[{gO2}]], VWm, Fv[{gI2}]][PR]]*Mass[Fv[{gI2}]]*
      Cp[bar[UFe[{gO1}]], VWm, Fv[{gI2}]][PL]] - 
   4*sum[gI2, 1, 3, (-rMS/2 + B0[p^2, Mass2[Fe[{gI2}]], Mass2[VZ]])*
      conj[Cp[bar[UFe[{gO2}]], VZ, Fe[{gI2}]][PR]]*Mass[Fe[{gI2}]]*
      Cp[bar[UFe[{gO1}]], VZ, Fe[{gI2}]][PL]], 
  -sum[gI1, 1, 2, sum[gI2, 1, 3, B1[p^2, Mass2[Fv[{gI2}]], Mass2[Hm[{gI1}]]]*
        conj[Cp[bar[UFe[{gO2}]], Hm[{gI1}], Fv[{gI2}]][PR]]*
        Cp[bar[UFe[{gO1}]], Hm[{gI1}], Fv[{gI2}]][PR]]]/2 - 
   sum[gI1, 1, 3, sum[gI2, 1, 2, B1[p^2, Mass2[Fe[{gI1}]], Mass2[Ah[{gI2}]]]*
       conj[Cp[bar[UFe[{gO2}]], Fe[{gI1}], Ah[{gI2}]][PR]]*
       Cp[bar[UFe[{gO1}]], Fe[{gI1}], Ah[{gI2}]][PR]]]/2 - 
   sum[gI1, 1, 3, sum[gI2, 1, 3, B1[p^2, Mass2[Fe[{gI2}]], Mass2[hh[{gI1}]]]*
       conj[Cp[bar[UFe[{gO2}]], hh[{gI1}], Fe[{gI2}]][PR]]*
       Cp[bar[UFe[{gO1}]], hh[{gI1}], Fe[{gI2}]][PR]]]/2 - 
   sum[gI2, 1, 3, (rMS/2 + B1[p^2, Mass2[Fe[{gI2}]], 0])*
     conj[Cp[bar[UFe[{gO2}]], VP, Fe[{gI2}]][PL]]*
     Cp[bar[UFe[{gO1}]], VP, Fe[{gI2}]][PL]] - 
   sum[gI2, 1, 3, (rMS/2 + B1[p^2, Mass2[Fv[{gI2}]], Mass2[VWm]])*
     conj[Cp[bar[UFe[{gO2}]], VWm, Fv[{gI2}]][PL]]*
     Cp[bar[UFe[{gO1}]], VWm, Fv[{gI2}]][PL]] - 
   sum[gI2, 1, 3, (rMS/2 + B1[p^2, Mass2[Fe[{gI2}]], Mass2[VZ]])*
     conj[Cp[bar[UFe[{gO2}]], VZ, Fe[{gI2}]][PL]]*
     Cp[bar[UFe[{gO1}]], VZ, Fe[{gI2}]][PL]], 
  -sum[gI1, 1, 2, sum[gI2, 1, 3, B1[p^2, Mass2[Fv[{gI2}]], Mass2[Hm[{gI1}]]]*
        conj[Cp[bar[UFe[{gO2}]], Hm[{gI1}], Fv[{gI2}]][PL]]*
        Cp[bar[UFe[{gO1}]], Hm[{gI1}], Fv[{gI2}]][PL]]]/2 - 
   sum[gI1, 1, 3, sum[gI2, 1, 2, B1[p^2, Mass2[Fe[{gI1}]], Mass2[Ah[{gI2}]]]*
       conj[Cp[bar[UFe[{gO2}]], Fe[{gI1}], Ah[{gI2}]][PL]]*
       Cp[bar[UFe[{gO1}]], Fe[{gI1}], Ah[{gI2}]][PL]]]/2 - 
   sum[gI1, 1, 3, sum[gI2, 1, 3, B1[p^2, Mass2[Fe[{gI2}]], Mass2[hh[{gI1}]]]*
       conj[Cp[bar[UFe[{gO2}]], hh[{gI1}], Fe[{gI2}]][PL]]*
       Cp[bar[UFe[{gO1}]], hh[{gI1}], Fe[{gI2}]][PL]]]/2 - 
   sum[gI2, 1, 3, (rMS/2 + B1[p^2, Mass2[Fe[{gI2}]], 0])*
     conj[Cp[bar[UFe[{gO2}]], VP, Fe[{gI2}]][PR]]*
     Cp[bar[UFe[{gO1}]], VP, Fe[{gI2}]][PR]] - 
   sum[gI2, 1, 3, (rMS/2 + B1[p^2, Mass2[Fv[{gI2}]], Mass2[VWm]])*
     conj[Cp[bar[UFe[{gO2}]], VWm, Fv[{gI2}]][PR]]*
     Cp[bar[UFe[{gO1}]], VWm, Fv[{gI2}]][PR]] - 
   sum[gI2, 1, 3, (rMS/2 + B1[p^2, Mass2[Fe[{gI2}]], Mass2[VZ]])*
     conj[Cp[bar[UFe[{gO2}]], VZ, Fe[{gI2}]][PR]]*
     Cp[bar[UFe[{gO1}]], VZ, Fe[{gI2}]][PR]]}}
