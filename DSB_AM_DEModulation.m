clc
clear all
close all
fm=25;
t=0:0.0001:0.30;
m=sin(2*pi*fm*t);
subplot(2,2,1);
plot(t, m,'red');
grid on;
title('Audio Signal');
xlabel('Time');
ylabel('Frequency');
fc=2000;
c=sin(2*pi*fc*t);
subplot(2,2,2);
plot(t, c,'green');
grid on;
title('Carrier Signal');
xlabel('Time');
ylabel('Frequency');
v=m.*c;
subplot(2,2,3);
plot(v,'yellow');
grid on;
title('Modulation Signal');
xlabel('Time');
ylabel('Frequency');
fd=2000;
dc=sin(2*pi*fd*t);
d=dc.*v;
subplot(2,2,4);
plot(d,'blue');
title('Demodulation Signal');
xlabel('Time');
ylabel('Frequency');