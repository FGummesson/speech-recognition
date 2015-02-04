close all;
clear all;
clc;
% freqz(([1,-.9], 1); %pre
freqz([1, -1], [1,-0.93]);

load task5.mat;
figure 
plot(t1)
y = filter([1, -1], [1,-0.92], t1);
hold on
plot(y, 'r');
legend('no filter','after high pass filter');

