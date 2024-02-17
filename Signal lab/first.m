
clc;
clear all;
close all;
% Unit step signal:
N=10;t=1:10;
x=ones(1,N);
subplot(5,2,1);
stem(t,x,'b');
xlabel('time');ylabel('amplitude');
title('unit step');
%Unit impulse signal
t=-10:1:10;x=(t==0);
subplot(5,2,2);stem(t,x,'b');
xlabel('time');ylabel('amplitude');
title('unit impulse');
%Exponential signal
n=5:15;x_n=(0.9).^n;
subplot(5,2,3);stem(n,x_n,'b');
xlabel('Time sample');ylabel('Amplitude');
title('unit exp');
%Unit ramp signal
t=-20:20;ramp_n=(n>=0).*n;
subplot(5,2,4);stem(n, ramp_n); 
xlabel('Time Sample');ylabel('Amplitude')
title('unit ramp'); 
%Unit parabolic signal
t=-6:0.01:6; parabola = 0.5 *(t.^2);
subplot(5,2,5);plot(t, parabola);
xlabel('Time Sample');ylabel('Amplitude') 
title('unit para'); 
%Unit rectangle pulse
n=-5:0.01:5;width=2;
x_n=rectpuls(n,width);subplot(5,2,6);plot(n,x_n);
xlabel('Time sample');ylabel('Amplitude');
title('unit rec'); 
%Triangular signal
x = -5:0.01:5;width=2;
y=tripuls(x,width);subplot(5,2,7);plot(x,y); 
title(['Triangular Pulse']);
xlabel('Time');ylabel('Amplitude'); 
%Sinusoidal signal
t=-0.05:0.001:0.05;f=25;a=2;
y =a* sin (2*pi*f*t);subplot(5,2,8);plot(t, y);
xlabel('Time Sample');ylabel('Amplitude')
title('Sinusoidal signal'); 
%Symmetric (Even) and Antisymmetric (Odd) signals
n1=0:6;x1=[1 1 1 1 1 1 0];n2=-fliplr(n1);
n=min(min(n1),min(n2)):max(max(n1),max(n2));
y1=zeros(1,length(n));y1((n>=min(n1))&(n<=max(n1)))=x1();x=y1;
xe=0.5*(x+fliplr(x));xo=0.5*(x-fliplr(x));
subplot(5,2,9),stem(n,xe);
title('Even Signal');
subplot(5,2,10),stem(n,xo);
title('Odd Signal');