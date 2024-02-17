clc;
clear all;
close all;
t = 0:0.001:1; 
vm = 5;
vc = 5;
fM = 4;
fc = 50;
m = sin(2*pi*t);
 
kp  = pi/2;
mp = kp*vm;
 
msg = vm*cos(2*pi*fM*t);
subplot(3,1,1); %plotting message signal
plot(t,msg);
xlabel('Time');
ylabel('Amplitude');
title('Message ');
 
carrier = vc*cos(2*pi*fc*t+mp);
subplot(3,1,2); %plotting carrier signal
plot(t,carrier);
xlabel('Time');
ylabel('Amplitude');
title('Carrier Signal');
 
y = vc*sin(2*pi*fc*t+mp*sin(2*pi*fM*t));
subplot(3,1,3);%plotting PM (Frequency Modulated) signal
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('PM Signal');