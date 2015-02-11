function output = pre_emph(input)
% pre-emphasis of input signal
gamma = 0.97;
output = filter([1 -gamma], 1, input);
end