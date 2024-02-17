n=-10:1:10;
y=(n==0);
subplot(1,1,1);
stem(n,y);
xlabel('time');
ylabel('amplitude');
title('unit impulse');