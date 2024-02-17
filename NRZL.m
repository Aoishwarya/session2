clc;
clear all;
close all;
        
bits = [1 0 1 1 1 0 0 1];
bitrate=1; %bit per second
T=length(bits)/bitrate;
n=1000;
N=n*length(bits);   
dt=T/N;
t=0:dt:T;
x=[zeros(1,length(t))]; 
 
for i=1:length(bits)
  if bits(i)==1
    x((i-1)*n+1:i*n) = 1;
  else x((i-1)*n+1:i*n) = -1;
  end
end
plot(t,x);
axis([0 t(end) -2 2]);
grid on;
counter = 0;
for i = 1:length(t)
  if t(i)>counter
    counter = counter + 1;
    if x(i)>0
      result(counter) = x(i);
    else result(counter) = 0;
    end
  end
end
disp('NRZ-L Decoding:');
disp(result);
xlabel('Time', 'fontsize',14, 'fontWeight','bold');
ylabel('Amplitude', 'fontsize',14, 'fontWeight','bold');
title(['Polar NRZ-L: ' num2str(bits)]);

