clc;
clear all;
close all;


Ac=5; %carrier signal amplitude
Am=5; % message signal amplitude
fc=80; %carrier frequency
fm=10; %message frequency fm<fc
m=1; %enter modulation index
t1=0:0.001:1;

y1=sin(2*pi*fm*t1); % message signal
y2=sin(2*pi*fc*t1); % carrier signal
eq=(1+m.*y1).*(Ac.*y2);
subplot(311);
plot(t1,y1);
xlabel('Time');
ylabel('Amplitude');
title('Message signal')
subplot(312)
plot(t1,y2);
xlabel('Time');
ylabel('Amplitude');
title('Carrier signal');
subplot(313);
plot(t1,eq);
plot(t1,eq,'r');
xlabel('Time');
ylabel('Amplitude');
title('Modulated signal');