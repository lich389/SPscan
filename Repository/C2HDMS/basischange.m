(* ::Package:: *)

rem12->(mutild tb)/(1+tb^2)+vS (remu12+remu21+(rel3p+rel6p+rel7p) vS)


l1->(2 m11sq (1+tb^2)+tb (-2 mutild tb+(-3 rel6+rel7 tb^2) v^2))/(2 v^2)


l3->(1/(2 (1+tb^2) v^2))(4 m12sq+4 mutild tb+4 m12sq tb^2-6 rel6 v^2-3 rel7 v^2-4 (l4+rel5) tb v^2-3 rel7 tb^2 v^2+3 rel7 (1+tb^2) v^2 Cos[2 ArcTan[tb]]) Csc[2 ArcTan[tb]]


l2->(-4 mutild tb+4 m22sq (tb+tb^3)+2 (rel6-3 rel7 tb^2) v^2)/((1+tb^2) v^2 (3 tb-Sqrt[1+tb^2] Sin[3 ArcTan[tb]]))


l3pp->(1/(6 vS^3))((3 remu11 v^2)/(1+tb^2)+(3 remu12 tb v^2)/(1+tb^2)+(3 remu21 tb v^2)/(1+tb^2)+(3 remu22 tb^2 v^2)/(1+tb^2)+3 m33sq vS-3 remus1 vS^2-9 remus2 vS^2-2 rel1pp vS^3-8 rel2pp vS^3)


l1p->(1/(2 v vS))(m13sq Sqrt[1+tb^2]-v (2 remu11+remu12 tb+remu21 tb+4 rel4p vS+2 rel3p tb vS+2 rel6p tb vS+2 rel7p tb vS))


l2p->(1/(2 tb v vS))(m23sq Sqrt[1+tb^2]-v (remu12+remu21+2 remu22 tb+2 (rel3p+rel6p+rel7p+2 rel5p tb) vS))


rel5->(1/(2 (1+tb^2) v^2))(-4 m44sq tb+4 mutild tb-2 rel6 v^2-rel7 v^2-rel7 tb^2 v^2+rel7 (1+tb^2) v^2 Cos[2 ArcTan[tb]]) Csc[2 ArcTan[tb]]


rel7p->(m45sq+remu12 v-remu21 v+2 rel6p v vS)/(2 v vS)


remsp->1/4 (-m55sq-2 rel5p v^2-(4 rel4p v^2)/(1+tb^2)-(remu11 v^2)/(2 vS)-(remu22 v^2)/(2 vS)-3 remus1 vS-remus2 vS-(4 rel1pp vS^2)/3-(4 rel2pp vS^2)/3-(v^2 (remu11-remu22-4 rel5p vS) Cos[2 ArcTan[tb]])/(2 vS)-2 rel6p v^2 Sin[2 ArcTan[tb]]-2 rel7p v^2 Sin[2 ArcTan[tb]]-(remu12 v^2 Sin[2 ArcTan[tb]])/(2 vS)-(remu21 v^2 Sin[2 ArcTan[tb]])/(2 vS))


iml6->(-2 m14sq Sqrt[1+tb^2]-iml5 tb v^2)/(2 v^2)


iml7->(-2 m24sq Sqrt[1+tb^2]-iml5 v^2)/(2 tb v^2)


iml3p->(-m34sq-immu12 v+immu21 v-2 iml6p v vS+2 iml7p v vS)/(2 v vS)


iml4p->(-m15sq Sqrt[1+tb^2]-2 immu11 v-immu12 tb v-immu21 tb v-2 iml6p tb v vS-2 iml7p tb v vS)/(4 v vS)


iml5p->(-m25sq Sqrt[1+tb^2]-immu12 v-immu21 v-2 immu22 tb v-2 iml6p v vS-2 iml7p v vS)/(4 tb v vS)


iml1pp->1/(4 (1+tb^2) vS^3) (6 immu11 v^2+6 immu22 tb^2 v^2-6 m35sq vS-6 m35sq tb^2 vS-6 immus1 vS^2-6 immus2 vS^2-6 immus1 tb^2 vS^2-6 immus2 tb^2 vS^2-8 iml2pp vS^3-8 iml2pp tb^2 vS^3+3 immu12 v^2 Sin[2 ArcTan[tb]]+3 immu21 v^2 Sin[2 ArcTan[tb]]+3 immu12 tb^2 v^2 Sin[2 ArcTan[tb]]+3 immu21 tb^2 v^2 Sin[2 ArcTan[tb]])



Simplify[Im[E^(-I \[Eta]) M12]->-(1/(2 v2))(-v1 v2^2 Im[E^(-2 I \[Eta]) Subscript[\[Lambda], 5]]-v1^2 v2 Im[E^(-I \[Eta]) Subscript[\[Lambda], 6]]-v2^3 Im[E^(-I \[Eta]) Subscript[\[Lambda], 7]]-2 v2 vS^2 Im[E^(-I \[Eta]) Subscript[\[Lambda], 3 p]]-2 v2 vS^2 Im[E^(-I (\[Eta]-2 \[Xi])) Subscript[\[Lambda], 6 p]]+2 v2 vS^2 Im[E^(I (\[Eta]+2 \[Xi])) Subscript[\[Lambda], 7 p]]-2 v2 vS Im[E^(I (-\[Eta]+\[Xi])) Subscript[\[Mu], 12]]+2 v2 vS Im[E^(I (\[Eta]+\[Xi])) Subscript[\[Mu], 21]])/. {v1->v Cos[ArcTan[tb]],v2->v Sin[ArcTan[tb]]}]



Simplify[Im[E^(2 I \[Xi]) Subscript[m, sp]]->-(1/(6 vS))(6 v1^2 vS Im[E^(2 I \[Xi]) Subscript[\[Lambda], 4 p]]+6 v2^2 vS Im[E^(2 I \[Xi]) Subscript[\[Lambda], 5 p]]+6 v1 v2 vS Im[E^(-I (\[Eta]-2 \[Xi])) Subscript[\[Lambda], 6 p]]+6 v1 v2 vS Im[E^(I (\[Eta]+2 \[Xi])) Subscript[\[Lambda], 7 p]]+vS^3 Im[E^(4 I \[Xi]) Subscript[\[Lambda], pp1]]+2 vS^3 Im[E^(2 I \[Xi]) Subscript[\[Lambda], pp2]]+3 v1^2 Im[E^(I \[Xi]) Subscript[\[Mu], 11]]+3 v1 v2 Im[E^(I (-\[Eta]+\[Xi])) Subscript[\[Mu], 12]]+3 v1 v2 Im[E^(I (\[Eta]+\[Xi])) Subscript[\[Mu], 21]]+3 v2^2 Im[E^(I \[Xi]) Subscript[\[Mu], 22]]+3 vS^2 Im[E^(3 I \[Xi]) Subscript[\[Mu], S1]]+3 vS^2 Im[E^(I \[Xi]) Subscript[\[Mu], S2]])/. {v1->v Cos[ArcTan[tb]],v2->v Sin[ArcTan[tb]]}]
