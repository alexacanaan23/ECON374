%% Exam 1
%Alexa Canaan

%% Problem 2
clear
syms PQ PQQ Cq1q1 Cq1q2 Aq2q1 Aq2q2 dq1 dq2 Pk dk PQk q1 PQk q2
syms A; A=[2*PQ + PQQ*q1 - Cq1q1, PQ+PQQ*q1-Cq1q2; PQ+ PQQ*q2-Aq2q1, 2*PQ + PQQ*q2-Aq2q2]
syms q1; q1=[-Pk*dk-PQk*q1*dk, PQ+PQQ*q1-Cq1q2; -Pk*dk-PQk*q2*dk, 2*PQ + PQQ*q2-Aq2q2]
syms dq1_star; dq1_star= det(q1)/det(A)
simplify(dq1_star)

%% Problem 3
clear
syms dy fr dr fE dE fG dG dr gy gpi dpi my xR dR xrf drf
syms A; A=[1, -fr, 0, -fE; -gy, 1, -gpi, 0; -my, 0, 1, 0; 0, -xR, 0, 1]
syms Y; Y=[fG*dG, -fr, 0, -fE; 0, 1, -gpi, 0; 0, 0, 1, 0; -xrf*drf, -xR, 0, 1]
syms pi; pi=[1, -fr, fG*dG, -fE; -gy, 1, 0, 0; -my, 0, 0, 0; 0, -xR, -xrf*drf, 1]
syms dy_star; dy_star=det(Y)/det(A)
syms dpi_star; dpi_star=det(pi)/det(A)