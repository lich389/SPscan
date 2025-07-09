% Diagrams/FeynDia3.mp -- do not edit, generated automatically by C2HDMS-EWSB.tex
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
vconnect ("dashes", __r1, __v1);
vconnect ("scalar", __r2, __v1);
vconnect ("scalar", __v1, __l2);
vlabel ("$h_{{i}}$", __l1);
vlabel ("$h_{{j}}$", __r1);
vlabel ("$H^-_{{k}}$", __r2);
vlabel ("$H^+_{{l}}$", __l2);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
