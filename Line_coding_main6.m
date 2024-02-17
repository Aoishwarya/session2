%Line coding nrz-I
clc;
clear all;
close all;
		
bits = [1 0 1 1 1 0 0 1];
bitrate=1; %bit per second

figure;
[t,x]= polarnrzI(bits, bitrate);
plot(t, x, 'Linewidth', 3);
counter = 0;
lastbit = 1;
for i = 1:length(t)
  if t(i)>counter
    counter = counter + 1;
    if x(i)~=lastbit
      result(counter) = 1;
      lastbit = -lastbit;
    else result(counter) = 0;
    end
  end
end
disp('NRZ-I Decoding:');
disp(result);
xlabel('Time', 'fontsize',14, 'fontWeight','bold');
ylabel('Amplitude', 'fontsize',14, 'fontWeight','bold');
title(['Polar NRZ-I: ' num2str(bits)]);