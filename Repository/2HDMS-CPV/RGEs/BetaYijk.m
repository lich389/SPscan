{{Yu[i1, i2], epsU[i1, i2]*(3*trace[epsD, Adj[Yd]] + trace[epsE, Adj[Ye]] + 
     3*trace[Yu, Adj[epsU]]) + ((-17*g1^2)/20 - (9*g2^2)/4 - 8*g3^2 + 
     3*trace[Yd, Adj[Yd]] + trace[Ye, Adj[Ye]] + 3*trace[Yu, Adj[Yu]])*
    Yu[i1, i2] + (2*MatMul[epsU, Adj[epsU], Yu][i1, i2] - 
     4*MatMul[epsU, Adj[Yd], epsD][i1, i2] + MatMul[Yu, Adj[epsD], epsD][i1, 
      i2] + MatMul[Yu, Adj[epsU], epsU][i1, i2] - 
     3*MatMul[Yu, Adj[Yd], Yd][i1, i2] + 3*MatMul[Yu, Adj[Yu], Yu][i1, i2])/
    2, 0}, {epsU[i1, i2], epsU[i1, i2]*((-17*g1^2)/20 - (9*g2^2)/4 - 8*g3^2 + 
     3*trace[epsD, Adj[epsD]] + trace[epsE, Adj[epsE]] + 
     3*trace[epsU, Adj[epsU]]) + (6*trace[epsU, Adj[Yu]]*Yu[i1, i2] + 
     6*trace[Yd, Adj[epsD]]*Yu[i1, i2] + 2*trace[Ye, Adj[epsE]]*Yu[i1, i2] - 
     3*MatMul[epsU, Adj[epsD], epsD][i1, i2] + 
     3*MatMul[epsU, Adj[epsU], epsU][i1, i2] + MatMul[epsU, Adj[Yd], Yd][i1, 
      i2] + MatMul[epsU, Adj[Yu], Yu][i1, i2] - 
     4*MatMul[Yu, Adj[epsD], Yd][i1, i2] + 
     2*MatMul[Yu, Adj[Yu], epsU][i1, i2])/2, 0}, 
 {Yd[i1, i2], epsD[i1, i2]*(3*trace[epsU, Adj[Yu]] + 3*trace[Yd, Adj[epsD]] + 
     trace[Ye, Adj[epsE]]) - 
   ((g1^2 + 9*g2^2 + 32*g3^2 - 12*trace[Yd, Adj[Yd]] - 4*trace[Ye, Adj[Ye]] - 
      12*trace[Yu, Adj[Yu]])*Yd[i1, i2])/4 + 
   (2*MatMul[epsD, Adj[epsD], Yd][i1, i2] - 
     4*MatMul[epsD, Adj[Yu], epsU][i1, i2] + MatMul[Yd, Adj[epsD], epsD][i1, 
      i2] + MatMul[Yd, Adj[epsU], epsU][i1, i2] + 
     3*MatMul[Yd, Adj[Yd], Yd][i1, i2] - 3*MatMul[Yd, Adj[Yu], Yu][i1, i2])/
    2, 0}, {Ye[i1, i2], epsE[i1, i2]*(3*trace[epsU, Adj[Yu]] + 
     3*trace[Yd, Adj[epsD]] + trace[Ye, Adj[epsE]]) + 
   ((-9*g1^2)/4 - (9*g2^2)/4 + 3*trace[Yd, Adj[Yd]] + trace[Ye, Adj[Ye]] + 
     3*trace[Yu, Adj[Yu]])*Ye[i1, i2] + 
   (2*MatMul[epsE, Adj[epsE], Ye][i1, i2] + MatMul[Ye, Adj[epsE], epsE][i1, 
      i2] + 3*MatMul[Ye, Adj[Ye], Ye][i1, i2])/2, 0}, 
 {epsD[i1, i2], epsD[i1, i2]*(-1/4*g1^2 - (9*g2^2)/4 - 8*g3^2 + 
     3*trace[epsD, Adj[epsD]] + trace[epsE, Adj[epsE]] + 
     3*trace[epsU, Adj[epsU]]) + (6*trace[epsD, Adj[Yd]]*Yd[i1, i2] + 
     2*trace[epsE, Adj[Ye]]*Yd[i1, i2] + 6*trace[Yu, Adj[epsU]]*Yd[i1, i2] + 
     3*MatMul[epsD, Adj[epsD], epsD][i1, i2] - 
     3*MatMul[epsD, Adj[epsU], epsU][i1, i2] + MatMul[epsD, Adj[Yd], Yd][i1, 
      i2] + MatMul[epsD, Adj[Yu], Yu][i1, i2] - 
     4*MatMul[Yd, Adj[epsU], Yu][i1, i2] + 
     2*MatMul[Yd, Adj[Yd], epsD][i1, i2])/2, 0}, 
 {epsE[i1, i2], epsE[i1, i2]*((-9*g1^2)/4 - (9*g2^2)/4 + 
     3*trace[epsD, Adj[epsD]] + trace[epsE, Adj[epsE]] + 
     3*trace[epsU, Adj[epsU]]) + 3*trace[epsD, Adj[Yd]]*Ye[i1, i2] + 
   trace[epsE, Adj[Ye]]*Ye[i1, i2] + 3*trace[Yu, Adj[epsU]]*Ye[i1, i2] + 
   (3*MatMul[epsE, Adj[epsE], epsE][i1, i2])/2 + 
   MatMul[epsE, Adj[Ye], Ye][i1, i2]/2 + MatMul[Ye, Adj[Ye], epsE][i1, i2], 
  0}}
