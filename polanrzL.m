function [t,x]= polanrzL(bits, bitrate)
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