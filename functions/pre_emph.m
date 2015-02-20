function output = pre_emph(input, gamma)
% pre-emphasis of input signal
% gamma = 0.98;
output = filter([1 -gamma], 1, input);
end