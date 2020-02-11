%%Problem #3
%A
clear
syms Y r Ao b d ro g Yo f pi pio c e;
syms C;C = [1-b,d,0;-g,1,-f;-c,0,1]
syms x;x = [Y;r;pi]
syms alpha;alpha = [Ao;ro-g*Yo-f*pio;pio-c*Yo+c*e]
syms Ystar;Ystar = det([Ao,d,0;ro-g*Yo-f*pio,1,-f;pio-c*Yo+c*e,0,1])/det(C)
syms PIstar;PIstar = det([1-b,d,Ao;-g,1,ro-g*Yo-f*pio;-c,0,pio-c*Yo+c*e])/det(C)
diff(Ystar, ro)
diff(PIstar, ro)
%%
%Problem 4
clear
%%
%Problem 5
clear
syms L u B pi
syms pi A a u
syms pi; pi = A - a*u
syms L0; L= u^2 + B*pi^2
%A
syms L;L = u^2 + B*A^2 - 2*A*B*a*u + a^2*B*u^2
%B FOC
diff(L, u)
%C SOC
diff(diff(L,u))
%D 
%solve for optimal unemployment rate
uprime = solve(diff(L,u), u)
%solve for optimal inflation rate 
piprime = subs(pi,uprime)
%E find and sign comparative static derivatives
%uprimea
diff(uprime,a)
%piprimea
diff(piprime,a)
%G
%uprimeB
diff(uprime,B)
%pirpimeB
diff(piprime,B)
%%
%Problem 1
%PART A
clear
syms f1 c1 q1 f2 c2 q2 v1 v2 a b;
syms TC1; TC1=f1+(c1*q1.^2)
syms TC2; TC2=f2+(c2*q2.^2)
syms Q; Q=q1+q2
syms P; P=a-b*Q
syms FOC1; FOC1=diff((a-b*(q1+q2))*q1-TC1,q1)
FOC1=FOC1-b*v1*q1==0;
syms FOC2; FOC2=diff((a-b*(q1+q2))*q2-TC2,q2)
FOC2=FOC2-b*v2*q2==0;
%FOC1
%FOC2
syms q1_BR; q1_BR=solve(FOC1,q1)
syms q2_BR; q2_BR=solve(FOC2,q2)
syms q1_star;q1_star=subs(q1_BR,q2,q2_BR)
syms q2_star;q2_star=subs(q2_BR,q1,q1_BR)
q1_star=solve(q1_star,q1)
q2_star=solve(q2_star,q2)
syms Q_star;Q_star=q1_star+q2_star
syms P_star;P_star=a-b*Q_star

%PART B
syms q1_diff_c1;q1_diff_c1=diff(q1_star,c1)
syms q2_diff_c1;q2_diff_c2=diff(q2_star,c1)
syms Q_diff_c1;Q_diff_c1=diff(Q_star,c1)
syms P_diff_c1;P_diff_c1=diff(P_star,c1)

%PART D
syms difference_q1_q2;difference_q1_q2=q1_star-q2_star
syms diff_difference_q1_q2;difference_diff_q1_q2=diff(difference_q1_q2,c1)

%PART E
syms diffv2_difference_q1_q2;diffv2_difference_q1_q2=diff(diff_difference_q1_q2,v2)

%PART G

%PART H
syms FOCM; FOCM=diff((a-b*q1)*q1-TC1)
FOCM=FOCM+0==0
syms QM_star; QM_star=solve(FOCM,q1)
syms PM_star; PM_star=a-b*QM_star
syms diff_QM_star_c1; diff_QM_star_c1=diff(QM_star,c1)
syms diff_PM_star_c1; diff_PM_star_c1=diff(PM_star,c1)


