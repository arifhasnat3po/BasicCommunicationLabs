clc
clear all
close all
fm=20;
t=0:0.0001:0.10;
m=sin(2*pi*fm*t);
subplot(2,2,1);
plot(t, m);
grid on;
title('Audio Signal');
xlabel('Time');
ylabel('Frequency');
fc=1000;
t=0:0.0001:0.10;
c=sin(2*pi*fc*t);
subplot(2,2,2);
plot(t, c);
grid on;
title('Carrier Signal');
xlabel('Time');
ylabel('Frequency');
v=m.*c;
subplot(2,2,3);
plot(v);
grid on;
title('Modulation Signal');
xlabel('Time');
ylabel('Frequency');



clc
clear all
close all
fm=25;
t=0:0.0001:0.30;
m=1*sin(2*pi*fm*t);
subplot(2,2,1);
plot(t, m,'blue');
grid on;
title('Audio Signal');
xlabel('Time');
ylabel('Frequency');
fc=2000;
c=5*sin(2*pi*fc*t);
subplot(2,2,2);
plot(t, c,'yellow');
grid on;
title('Carrier Signal');
xlabel('Time');
ylabel('Frequency');
v=m.*c;
subplot(2,2,3);
plot(v,'green');
grid on;
title('Modulation Signal');
xlabel('Time');
ylabel('Frequency');
fd=2000;
dc=sin(2*pi*fd*t);
d=dc.*v;
subplot(2,2,4);
plot(d,'red');
title('Demodulation Signal');
xlabel('Time');
ylabel('Frequency');
