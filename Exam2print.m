%% Exam 1
%% Question 2
clear 
syms b dqA1 da qA1 db qB1 dCA dqB1 dCB dS beta dQB2 dalpha qB2 dbeta 
syms A; A=[-2*b, -2*b, 0;
    b, -2*b, 0;
    0, 0, -2*beta]

syms dqB2star; dqB2star=[-2*b, -2*b, -da + 2*qA1*db + 2*qB1*db + dCA;
    b, -2*b, -da - qA1*db + 2*qB1*db + dCB + dS;
    0, 0, -dalpha + 2*qB2*dbeta + dCB]
syms dqB2_star; dqB2_star= det(dqB2star)/det(A)
diff(dqB2_star, dCB)

syms dqB1star; dqB1star=[-2*b, -da + 2*qA1*db + 2*qB1*db + dCA, 0;
    b, -da - qA1*db + 2*qB1*db + dCB + dS, 0;
    0, -dalpha + 2*qB2*dbeta + dCB, -2*beta]
syms dqB1_star; dqB1_star= det(dqB1star)/det(A)
diff(dqB1_star, dCB)

syms dqA1star; dqA1star=[-da + 2*qA1*db + 2*qB1*db + dCA, -2*b, 0;
    -da - qA1*db + 2*qB1*db + dCB + dS, -2*b, 0;
    -dalpha + 2*qB2*dbeta + dCB, 0, -2*beta]
syms dqA1_star; dqA1_star= det(dqA1star)/det(A)
diff(dqA1_star, dCB)

