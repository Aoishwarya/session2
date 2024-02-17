function [t,x]= dimanchtr(bits, bitrate)	
T = length(bits)/bitrate;
n = 1000;	
N = n*length(bits);

dt=T/N;	
t = 0:dt:T;
x=[zeros(1,length(t))];	
lastbit = 1;

for i=1:length(bits)
    if bits(i)==0
    x((i-1)*n+1:(i-1)*n+n/2) = -lastbit;
    x((i-1)*n+n/2:i*n) = lastbit;
  else
    x((i-1)*n+1:(i-1)*n+n/2) = lastbit;
    x((i-1)*n+n/2:i*n) = -lastbit;
    lastbit = -lastbit;      
    end
end