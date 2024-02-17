%Line coding main function
clc;
clear all;
close all;

bits= [ 1 0 1 0 1 0 0 0 1];
bitrate=1; %bit per second

figure;
[t,x]= unipolarnrz(bits, bitrate);
plot(t,x, 'lineWidth',3);
xlabel('Time', 'fontsize',14, 'fontWeight','bold');
ylabel('Amplitude', 'fontsize',14, 'fontWeight','bold');
title(['Unipolar NRZ: ' num2str(bits)]);
