clc;
clear all;
close all;

amplitude = 3;  % Amplitude of the sine wave
frequency = 20; % Frequency of the sine wave in Hz
duration = 1;   % Duration of the sine wave in seconds

% Calculate the time vector
sampling_rate = 1000; % Number of samples per second
t = linspace(0, duration, duration * sampling_rate);

% Generate the sine wave
sine_wave = amplitude * sin(2 * pi * frequency * t);

% Plot the sine wave
plot(t, sine_wave);
xlabel('Time (s)');
ylabel('Amplitude');
title('Sine Wave: Amplitude = 3, Frequency = 20 Hz');
grid on;
