%Amplitude Shift keying(ASK)

fm=5; %Frequency of the pulse
fc = 30; %Frequency of the carrier
A=3;
t=0:0.001:1;
x=A.*sin(2*pi*fc*t);%carrer signal
plot(t,x);
u=A/2.*square(2*pi*fm*t)+(A/2);%pulse signal 
subplot(3,1,1);
plot(t,x);
subplot(3,1,2);
plot(t,u);
v=x.*u;
subplot(3,1,3);
plot(t,v);%plot ASK signal
