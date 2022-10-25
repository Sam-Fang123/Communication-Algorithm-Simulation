clc;
clear;
N = 256;
NI = 4;
%first iteration
first_iter = (8*N^3+9*N^2-5*N)/6+(N^2+N)*log2(N);

%other iteration T3C1
D = 0;
T3C1_D0_other = (NI-1)*(N^2*(4*D^2+6*D+3)+N*log2(N)+N*((8*D^3+18*D^2+19*D+15)/3)+1)
D = 1;
T3C1_D1_other = (NI-1)*(N^2*(4*D^2+6*D+3)+N*log2(N)+N*((8*D^3+18*D^2+19*D+15)/3)+1);
D = 2;
T3C1_D2_other = (NI-1)*(N^2*(4*D^2+6*D+3)+N*log2(N)+N*((8*D^3+18*D^2+19*D+15)/3)+1);
D = 3;
T3C1_D3_other = (NI-1)*(N^2*(4*D^2+6*D+3)+N*log2(N)+N*((8*D^3+18*D^2+19*D+15)/3)+1);
D = 4;
T3C1_D4_other = (NI-1)*(N^2*(4*D^2+6*D+3)+N*log2(N)+N*((8*D^3+18*D^2+19*D+15)/3)+1);
D = 5;
T3C1_D5_other = (NI-1)*(N^2*(4*D^2+6*D+3)+N*log2(N)+N*((8*D^3+18*D^2+19*D+15)/3)+1);

%other iteration T2C1
T2C1_other = (NI-1)*((20*N^3+9*N^2+13*N)/6+N*log2(N)+2);

%% Total
T3C1_D0_total = first_iter + T3C1_D0_other;
T3C1_D1_total = first_iter + T3C1_D1_other;
T3C1_D2_total = first_iter + T3C1_D2_other;
T3C1_D3_total = first_iter + T3C1_D3_other;
T3C1_D4_total = first_iter + T3C1_D4_other;
T3C1_D5_total = first_iter + T3C1_D5_other;
T2C1_total = first_iter + T2C1_other;