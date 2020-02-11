%Problem Set #1

%% Question 1
clear
syms a b q1 q2 q3 v c1 c2 c3
syms Q;Q = q1 + q2 + q3 %market quantity
syms p1;p1 = (a-b*Q)*q1 - c1*(Q^2) %profit firm 1
syms p2;p2 = (a-b*Q)*q2 - c2*(Q^2) %profit firm 2
syms p3;p3 = (a-b*Q)*q3 - c3*(Q^2) %profit firm 3

%Part A
%First order conditions
syms FOC1;FOC1 = diff(p1, q1)
syms FOC2;FOC2 = diff(p2, q2)
syms FOC3;FOC3 = a - b*q1*v-b*q2*v-2*b*q3-2*c3*(q1+q2+q3)*(2*v+1)

syms A; A=[2*b+2*c1, b+2*c1, b+2*c1;
    2*c2 + b, 2*b+ 2*c2, b+2*c2;
    b+4*c3*v+2*c3, b + 4*c3*v + 2* c3, 2*b + 2*b*v + 4 * c3 *v + 2*c3]
syms X; X=[q1;q2;q3]
syms B; B=[a;a;a]
det(A)
syms A1; A1=[a, b+2*c1, b+2*c1;
    a, 2*b+ 2*c2, b+2*c2;
    a, b + 4*c3*v + 2* c3, 2*b + 2*b*v + 4 * c3 *v + 2*c3]
syms A2; A2=[2*b+2*c1, a, b+2*c1;
    2*c2 + b, a, b+2*c2;
    b+4*c3*v+2*c3, a, 2*b + 2*b*v + 4 * c3 *v + 2*c3]
syms A3; A3=[2*b+2*c1, b+2*c1, a;
    2*c2 + b, 2*b+ 2*c2, a;
    b+4*c3*v+2*c3, b + 4*c3*v + 2* c3, a]
syms q1_star; q1_star= det(A1)/det(A)
syms q2_star; q2_star= det(A2)/det(A)
syms q3_star; q3_star= det(A3)/det(A)
simplify(q1_star)
simplify(q2_star)
simplify(q3_star)

%Part B
syms q3_diff_c1; q3_diff_c1= diff(q3_star,c1)
simplify(q3_diff_c1)

%Part C
syms q3_diff_v; q3_diff_v= diff(q3_star,v)
simplify(q3_diff_v)

%Part D
syms Pi3; Pi3=subs(p3,q3,q3_star)
syms Pi31; Pi31=subs(Pi3,q2,q2_star)
syms Pi32; Pi32=subs(Pi31,q1,q1_star)
syms Pi3_diff_a; Pi3_diff_a=diff(Pi32,a)
simplify(Pi3_diff_a)

%% Question 2
clear
syms a1 a2 a3 q1 q2 q3 c1 c2 c3
syms p1;p1 = a1 - 4*q1 - 2*q2
syms p2;p2 = a2 - 4*q2 - 2*q3
syms p3;p3 = a3 - 4*q3 - 2*q1
syms Q;Q = q1 + q2 + q3

%Part A
%Find FOC
syms P1;P1 = p1*q1 - c1*Q^2
syms P2;P2 = p2*q2 - c2*Q^2
syms P3;P3 = p3*q3 - c3*Q^2
syms FOC1;FOC1 = diff(P1,q1)
syms FOC2;FOC2 = diff(P2,q2)
syms FOC3;FOC3 = diff(P3,q3)

%solve for each firm's equilibrium quantity
A = [8+2*c1, 2+2*c1, 2*c1;
    2*c2, 8+2*c2, 2+2*c2;
    2+2*c3, 2* c3, 8+2*c3]
Q = [q1;q2;q3]
B = [a1;a2;a3]
syms J; J=det(A)
A1 = [a1, 2+2*c1, 2*c1;
    a2, 8+2*c2, 2+2*c2;
    a3, 2* c3, 8+2*c3]
A2 = [8+2*c1, a1, 2*c1;
    2*c2, a2, 2+2*c2;
    2+2*c3, a3, 8+2*c3]
A3 = [8+2*c1, 2+2*c1, a1;
    2*c2, 8+2*c2, a2;
    2+2*c3, 2* c3, a3]
syms q1star; q1star=det(A1)/J
syms q2star; q2star=det(A2)/J
syms q3star; q3star=det(A3)/J
simplify(q1star)
simplify(q2star)
simplify(q3star)

%Part B
%find the comparative static effect on firm 3's equilibrium quantity of an
%increase in c1
syms q3_diff_c1; q3_diff_c1 = diff(q3star, c1)
simplify(q3_diff_c1)

%Part C
%find the comparative static effect on firm 3's equilibrium profit level of
%an upward shift in the firm 1's demand curve
P3 = subs(P3,q1,q1star)
P3 = subs(P3,q2,q2star)
P3 = subs(P3,q3,q3star)
syms P3_diff_a1; P3_diff_a1=diff(P3, a1)
simplify(P3_diff_a1)

%% Question 3
syms MA bA aA pA XB bB pB aB XC bC pC aC tB tC
A = [bA, bB, bC; 1, -1, 0; 1, 0, -1]
p = [pA; pB; pC]
B = [aA * bA + aB*bB + aC * bC; tB; tC]
A3 = [bA, bB, aA * bA + aB*bB + aC; 1, -1, tB; 1, 0, tC]
det(A3)/det(A)
%Part B
syms pCstar; pCstar= (-bA*tC + bB*tB - bB*tC + aA*bA + aB*bB + aC*bC)/(bA + bB + bC)
syms pCstar_diff_tC; pCstar_diff_tC = diff(pCstar,tC)

%% Question 4
syms Ao b d e ro h k m u Eo x f rF Y r Pi E 
syms A; A=[(1-b), -d, 0 , -e;
    -k, 1, -h, 0;
    -m, 0, 1, 0;
    -x, -f, 0, 1]
syms X; X=[Y; r; Pi; E]
syms B; B=[Ao; ro; u; Eo-f*rF]
syms J; J= det(A)
syms A3; A3=[(1-b), -d, Ao , -e;
    -k, 1, ro, 0;
    -m, 0, u, 0;
    -x, -f, Eo-f*rF, 1] %inflation
syms A4; A4=[(1-b), -d, 0 , Ao;
    -k, 1, -h, ro;
    -m, 0, 1, u;
    -x, -f, 0, Eo-f*rF] %equilibrium exchange rate
syms pistar; pistar=det(A3)/J
syms Estar; Estar=det(A4)/J

%Part B
syms E_diff_rF; E_diff_rF=diff(Estar,rF)

%Part C
syms pi_diff_rF; pi_diff_rF=diff(pistar,rF)

%Part E
syms E_diff_u; E_diff_u=diff(Estar, u)

simplify(E_diff_rF)
simplify(pi_diff_rF)
