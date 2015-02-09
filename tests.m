test = [1 2 3 4 4 5 6 7 8 9];


string = 'databases/testfile.mat';
save(string, 'test')





%%
clc;
close all;
clear all;

for i = 1:10
    i
    for k = 1: 5
        k
        if k == 3
            break;           
        end
        
    end
    
end






%%
close all;
clear all;
clc;
load task5.mat

add_to_db(t1, 'testfile', 160, 80, 10, 16000, 1)







%%
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




%%
clear all;
close all;
clc;

load testfile.mat
input = input_4;
M = 8; % number of subsections the featurevectors are split into
s = size(input);
t = zeros(s(1), M);

integer = fix(s(2)/M);
remainder = mod(s(2), M);

for i = 1:M
    if i <= remainder
        for k = i + (i-1)*integer : i*integer + i
            t(:, i) = t(:, i) + input(:, k);
        end
        t(:, i) = t(:, i)./(integer + 1);
    end
    if i > remainder
        for k = i + (i-1)*integer : i*integer  + remainder
            t(:, i) = t(:, i) + input(:, k);
        end
        t(:, i) = t(:, i)./(integer);
    end
    
end



