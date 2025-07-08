% Diagrams/FeynDia32.mp -- do not edit, generated automatically by N2HDM-EWSB.tex
input feynmp
require_RCS_revision "1.30";
beginchar(1, 75*1.0pt#, 75*1.0pt#, 0);
"feynmf: 1";
LaTeX_unitlength:=1.0pt;
subgraph (0, 0, w, h);
vinit;
pickup pencircle scaled thin;
vleft (__l1, __l2);
vright (__r1, __r2);
vconnect ("dashes", __l1, __v1);
vconnect ("scalar", __v1, __r1);
vconnect ("wiggly", __r2, __v1);
vconnect ("boson", __l2, __v1);
vlabel ("$A^0_{{i}}$", __l1);
vlabel ("$H^+_{{j}}$", __r1);
vlabel ("$\gamma _{{\mu }}$", __r2);
vlabel ("$W^-_{{\nu }}$", __l2);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
