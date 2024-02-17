clc;
clear all;
close all;
x=0:1:2*pi;
y=sin(x);
z=cos(x);
subplot(2,1,1);
plot(x,y);
xlabel('Time');
ylabel('Amplitude');
grid on;

subplot(2,1,2);
stem(x,z);
xlabel('Time');
ylabel('Amplitude');
grid on;
%%
num=input('Enter number');
if mod(num,2)==0
    fprintf('%d is  even',num);
else 
      fprintf('%d is  odd',num);
end
%%
a=input('Enter variable: ');
disp(a);
    
%%
a=input('Enter 1st number');
b=input('Enter 2nd number');
c=input('Enter 3rd number');
if (a>b)&&(a>c)
    fprintf('Greater is %d',a);
elseif (b>a)&&(b>c)
     fprintf('Greater is %d',b);
else
    fprintf('Greater is %d',c);
end
 %%
 a=[1;2;6;7;8];
 sum=0;
 for i=1:length(a)
     sum=sum+a(i);
 end
 fprintf('Sum is %d',sum);
 %%
 %analog digital
 t=0:0.1:pi;
 y=sin(t);
 subplot(1,2,1);
 plot(t,y);
 subplot(1,2,2);
 stem(t,y);
 
 




