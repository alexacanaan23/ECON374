%% Problem 3
%A 
clear
syms gr ge hy hp my xy xr xrf dg dE drf gg
syms A; A=[1, -gr, 0, -ge; -hy, 1, -hp,0; -my, 0, 1, 0; -xy, -xr, 0, 1]
syms B;B=[gg*dg, -gr, 0, -ge; 0, 1, -hp,0; dE, 0, 1, 0; -xrf*drf, -xr, 0, 1]
syms y_star; y_star=det(B)/det(A) 

%% Problem 4
clear
syms hY hPI mY gr dr gE dE gG dG de
%de = inflation shock
syms A; A=[1,0,0; hY, 1, hPI; -mY, 0, 1]
syms Y; Y=[gr*dr + gE*dE + gG*dG, 0, 0; dr, 1, hPI; de, 0, 1]
syms FI; FI=[1, gr*dr + gE*dE + gG*dG, 0; hY, dr, hPI; -mY, de, 1]
syms PI; PI=[1, 0, gr*dr+gE*dE+gG*dG; hY, 1, dr; -mY, 0, de]
syms dY_star; dY_star=det(Y)/det(A)
syms dFI_star; dFI_star=det(FI)/det(A)
syms dPI_star; dPI_star=det(PI)/det(A)

%% Problem 5
%%A c12 means that it is the first derivative for firm 2
clear
syms pa da q1 pQa c11 dy1 dy2 y1 y2 pQ dq2 dq1 pQQ c12 c21 pQv q2 v dv c22 dq1 dq2 pQ;
syms J; J=[2*pQ+q1*pQQ-y1*c21,pQ+q1*pQQ;
    pQ+q2*pQQ*(1+v),pQ+pQ*(1+v)+q2*pQQ*(1+v)-y2*c22;]
syms B; B=[-pa*da-q1*pQa*da+c11*dy1,pQ+q1*pQQ;
    -pa*da-q2*pQa*da-q2*pa*(1+v)*da+c12*dy2, pQ+pQ*(1+v)+q2*pQQ*(1+v)-y2*c22;]
syms q1_star; q1_star=det(B)/det(J)
simplify(q1_star)
%%B
syms q1_star_dy2; q1_star_dy2=diff(q1_star,dy2)
simplify(q1_star_dy2)
