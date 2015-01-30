function output = pre_emph(input)
% pre-emphasis of input signal
gamma = 0.95;
output = filter([1 -gamma], 1, input);

output;