%% Problem Set 4
%Alexa
%% Problem 3
% Part B
syms cx qxx qxy dqxx dcx da dqxy cy qy dqy dcy
syms J; J=[-2-6*cx*(qxx+qxy), -6*cx*(qxx+qxy), 0;
    -6*cx*(qxx+qxy), -2-6*cx*(qxx+qxy), -1;
    0, -1, -2-3*cy*2*qy]
syms qxx_star; qxx_star=[3*(qxx+qxy)^2*dcx - da, -6*cx*(qxx+qxy), 0;
    3*(qxx+qxy)^2*dcx - da, -2-6*cx*(qxx+qxy), -1;
    3*qy^2*dcy - da, -1, -2-3*cy*2*qy]
syms dqxx_star; dqxx_star=det(qxx_star)/det(J)
simplify(dqxx_star)


%% Problem 4
% Part B
syms Pq1 Pq1q1 q1 Cq1q1 Cq1q2 dq1 Cq1a da Cq2q1 Pq2 Pq2q2 q2 Cq2q2 dq2 Cq2a
syms J; J=[Pq1+Pq1+Pq1q1*q1-Cq1q1, -Cq1q2;
    -Cq2q1, Pq2+Pq2+Pq2q2*q2-Cq2q2]
syms dq1_star; dq1_star=[Cq1a*da, -Cq1q2;
    -Cq2a*da, Pq2+Pq2+Pq2q2*q2-Cq2q2]
syms dq1star_da; dq1star_da=det(dq1_star)/det(J)
simplify(dq1star_da)