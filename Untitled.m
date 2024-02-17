clc;
clear all;
close all;
 
bits= [ 1 0 1 0 1 0 0 0 1];
bitrate=1; %bit per second
n=200;
T=length(bits)/bitrate;
N=n*length(bits); 
dt=T/N;
t=0:dt:T;
x=[zeros(1,length(t))];
 
for i=0:length(bits)-1
    if bits(i+1)==1
        x(i*n+1: (i+1)*n)=1;
    else
          x(i*n+1: (i+1)*n)=0;
    end
end
plot(t,x);
axis([0 t(end) -2 2]);
grid on;
xlabel('Time', 'fontsize',14, 'fontWeight','bold');
ylabel('Amplitude', 'fontsize',14, 'fontWeight','bold');
title(['Unipolar NRZ: ' num2str(bits)]);
