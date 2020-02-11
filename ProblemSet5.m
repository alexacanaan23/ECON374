%% Problem Set 5
%% 2
%c
clear
syms Q PQQ PQ CQQ L FQQ FQ dQ de dt dL
syms J; J=[Q*PQQ+2*PQ-CQQ-L*FQQ, 0, -FQ;
    0,0,1;
    -FQ,1,0]
syms A; A=[0, 0, -FQ;
    dt,0,1;
    0,1,0]
syms dQstar; dQstar=det(A)/det(J)

%% 3
%b
clear
syms Ucc Ucv dc Uvc Uvv P dv L dP dL dI v
syms J; J=[Ucc, Ucv, -1;
    Uvc, Uvv, -P;
    -1, -P, 0]
syms dv; dv=[Ucc, 0, -1;
    Uvc, L*dP, -P;
    -1, -dI+v*dP, 0]
syms dvstar; dvstar=det(dv)/det(J)