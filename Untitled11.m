
x=[1 1 1 0];
N=length(x);

X=zeros(1,N);
for k=1:N
    sum=0;
    for n=1:N
        sum=sum+x(n)*exp(-1i*2*pi*(k-1)*(n-1)/N);
    end
    X(k)=sum;
end
X
subplot(321);
stem(X);
title('Amplitude');
p=abs(phase(X));
subplot(322);
stem(p);
title('Phase');