x=ones(1,3);
w=-2*pi:0.01:4*pi;
h=freqz(x,1,w);
subplot(2,1,1);
plot(w/pi,abs(h));
grid;
title('Magnitude Response');
xlabel('\omega/\pi');
subplot(2,1,2);
plot(w/pi,angle(h));
grid;
title('Phase Response');
xlabel('\omega/\pi');