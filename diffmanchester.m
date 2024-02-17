function [t,x]= dr(bits, bitrate)
T=length(bits)/bitrate;
n=200;
N=n*length(bits);

dt=T/N;
t=0:dt:T;
x=[zeros(1,length(t))];

for i=0:length(bits)-1
    if bits(i)==0
    x((i-1)*n+1:(i-1)*n+n/2) = -lastbit;
    x((i-1)*n+n/2:i*n) = lastbit;
  else
    x((i-1)*n+1:(i-1)*n+n/2) = lastbit;
    x((i-1)*n+n/2:i*n) = -lastbit;
          
    end
end