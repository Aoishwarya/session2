clear all;
close all;
a=2;
b=3;
x1 = [1 2 3 4];
x2 = [2  3 4 1];
X1=fft(x1);
X2=fft(x2);
y1=abs(fft(a*x1+b*x2));
y2=abs(a*X1+b*X2);
y1
y2
if(y1==y2)
    fprintf('Linearity');
else
    fprintf('Not');
end




