function [t,x]= polarrz(bits, bitrate)
T=length(bits)/bitrate;
n=200;
N=n*length(bits);

dt=T/N;
t=0:dt:T;
x=[zeros(1,length(t))];

for i=0:length(bits)-1
    if bits(i+1)==1
        x(i*n+1: (i+0.5)*n)=1;
        x((i+0.5)*n+1:(i+1)*n)=0;
    else
          x(i*n+1: (i+0.5)*n)=-1;
           x((i+0.5)*n+1:(i+1)*n)=0;
    end
end