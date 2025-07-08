{{{d[{i1, 1}], d[{i2, col2}]}, 
  ((g1^2 + 20*g3^2)*Xi*Kronecker[1, col2]*Kronecker[i1, i2])/15 + 
   MatMul[epsD, Adj[epsD]][i1, i2] + MatMul[Yd, Adj[Yd]][i1, i2], 0}, 
 {{e[{i1}], e[{i2}]}, (3*g1^2*Xi*Kronecker[i1, i2])/5 + 
   MatMul[epsE, Adj[epsE]][i1, i2] + MatMul[Ye, Adj[Ye]][i1, i2], 0}, 
 {{u[{i1, 1}], u[{i2, col2}]}, 
  (4*(g1^2 + 5*g3^2)*Xi*Kronecker[1, col2]*Kronecker[i1, i2])/15 + 
   MatMul[epsU, Adj[epsU]][i1, i2] + MatMul[Yu, Adj[Yu]][i1, i2], 0}, 
 {{l[{1}][{i1}], l[{lef2}][{i2}]}, 
  (3*(g1^2 + 5*g2^2)*Xi*Kronecker[1, lef2]*Kronecker[i1, i2])/20 + 
   (MatMul[Tp[epsE], conj[epsE]][i1, i2] + MatMul[Tp[Ye], conj[Ye]][i1, i2])/
    2, 0}, {{q[{lef1}][{i1, 1}], q[{lef2}][{i2, col2}]}, 
  (Kronecker[lef1, lef2]*((g1^2 + 45*g2^2 + 80*g3^2)*Xi*Kronecker[1, col2]*
      Kronecker[i1, i2] + 30*(MatMul[Tp[epsD], conj[epsD]][i1, i2] + 
       epsTensor[2, lef1]*epsTensor[2, lef2]*MatMul[Tp[epsU], conj[epsU]][i1, 
         i2] + MatMul[Tp[Yd], conj[Yd]][i1, i2] + epsTensor[2, lef1]*
        epsTensor[2, lef2]*MatMul[Tp[Yu], conj[Yu]][i1, i2] + 
       epsTensor[1, lef1]*epsTensor[1, lef2]*(MatMul[Tp[epsU], conj[epsU]][
          i1, i2] + MatMul[Tp[Yu], conj[Yu]][i1, i2]))))/60, 0}}
