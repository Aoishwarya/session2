clc;clear all;close all;
x=[2 -1 3 7 1 2 -3];nx=[-4 -3 -2 -1 0 1 2 ];
y=[1 -1 2 -2 4 1 -2 5];ny=[-4 -3 -2 -1 0 1 2 3];a=xcorr(x,y);na = 0:length(a)-1;
subplot(3,1,1);stem(nx,x,'g');
xlabel('time');ylabel('amplitude');title('1stsequence');
subplot(3,1,2);stem(ny,y,'r');xlabel('time');ylabel('amplitude');title('2nd sequence');
subplot(3,1,3);stem(na,a,'r');xlabel('time');ylabel('amplitude');title('cross correlation sequence');