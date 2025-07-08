% Diagrams/FeynDia92.mp -- do not edit, generated automatically by N2HDM-EWSB.tex
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
vconnect ("ghost", __v1, __l1);
vconnect ("dots", __r1, __v1);
vconnect ("scalar", __v1, __r2);
vlabel ("$\bar {\eta ^+}$", __l1);
vlabel ("$\eta ^{\gamma }$", __r1);
vlabel ("$H^+_{{k}}$", __r2);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
