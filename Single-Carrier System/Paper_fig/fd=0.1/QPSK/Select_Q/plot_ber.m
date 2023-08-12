load('D&E-mode_indv=SNR_No-windowing_ZP_Optiaml_GCE-BEM_MMSE_MMSE_FD_LE_full_QPSK_fd=0.1_N=256_I=5_M=5_Nblock=10000.mat')
dv4=dv;
load('D&E-mode_indv=SNR_Tang_ZP_Optiaml_GCE-BEM_MMSE_MMSE_FD_LE_banded_Q=3_QPSK_fd=0.1_N=256_I=5_M=5_Nblock=10000.mat')
dv3=dv;
load('D&E-mode_indv=SNR_Tang_ZP_Optiaml_GCE-BEM_MMSE_MMSE_FD_LE_banded_Q=2_QPSK_fd=0.1_N=256_I=5_M=5_Nblock=10000.mat')
dv2=dv;
load('D&E-mode_indv=SNR_Tang_ZP_Optiaml_GCE-BEM_MMSE_MMSE_FD_LE_banded_Q=1_QPSK_fd=0.1_N=256_I=5_M=5_Nblock=10000.mat')

figure(1)
semilogy(indv.range,dv.BER_est(1,:),'-h');
xlabel('SNR (dB)');
ylabel('average BER');
grid on;
hold on;
semilogy(indv.range,dv2.BER_est(1,:),'-o');
semilogy(indv.range,dv3.BER_est(1,:),'-d');
semilogy(indv.range,dv4.BER_est(1,:),'-');
title('QPSK BER using Estimated CSI (Normalized Doppler Frequency = 0.1), MMSE-LE')
legend('Banded-MMSE-LE Q=1 (with windowing) [5]','Banded-MMSE-LE Q=2 (with windowing) [5]'...
    ,'Banded-MMSE-LE Q=3 (with windowing) [5]',...
    'Full-MMSE-LE')
xlim([0 indv.range(end)]);
ylim([10^-5 1]);
xticks(indv.range)