% Diagrams/FeynDia30.mp -- do not edit, generated automatically by C2HDMS-EWSB.tex
input feynmp
require_RCS_revision "1.30";
beginchar(1, 75*1.0pt#, 75*1.0pt#, 0);
"feynmf: 1";
LaTeX_unitlength:=1.0pt;
subgraph (0, 0, w, h);
vinit;
pickup pencircle scaled thin;
vleft (__l1);
vright (__r1, __r2);
vconnect ("fermion", __v1, __l1);
vconnect ("fermion", __r1, __v1);
vconnect ("scalar", __v1, __r2);
vlabel ("$\bar {u}_{{i \alpha }}$", __l1);
vlabel ("$d_{{j \beta }}$", __r1);
vlabel ("$H^+_{{k}}$", __r2);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
