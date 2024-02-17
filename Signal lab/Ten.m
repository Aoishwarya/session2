
h = [1, 2, 1, -2];nh=[0 1 2 3];% impulse response
x = [1, 2, 3, 6]; nx=[0 1 2 3];% input sequence
y = conv(h,x);
ny = 0:length(y)-1;
subplot(3,1,1);
stem(nx,x);
xlabel('Time index n');
ylabel('Amplitude');
title('Output of x');grid;
subplot(3,1,2);
stem(nh,h);
xlabel('Time index n');ylabel('Amplitude');
title('Output of h');grid;
subplot(3,1,3);stem(ny,y);
xlabel('Time index n');
ylabel('Amplitude');
title('Output of y');grid;