n = 0:40; D = 5;a = 3.0;b = -2;
x = a*cos(2*pi*0.1*n) + b*cos(2*pi*0.4*n);
xd = [zeros(1,D) x];
num = [2.2403 2.4908 2.2403];den = [1 -0.4 0.75];
y = filter(num,den,x);yd = filter(num,den,xd);
d = y - yd(1+D:41+D);
subplot(3,1,1);stem(n,y);ylabel('Amplitude'); 
title('Output y[n]'); grid;
subplot(3,1,2);stem(n,yd(1:41));
ylabel('Amplitude');
title(['Output due to Delayed Input x[n-]',num2str(D),']']); grid;
subplot(3,1,3);stem(n,d);
xlabel('Time index n'); ylabel('Amplitude');
title('Difference Signal'); grid;