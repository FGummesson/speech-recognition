% freqz(([1,-.9], 1); %pre
% freqz([1, -1], [1,-0.95]);

load task5.mat;
figure 
plot(t1)
y = filter([1, -1], [1,-0.95], t1);
figure
plot(y)

