function output = rm_noise(input)
% remove noise from speech signal
output = filter([1, -1], [1,-0.92], input);

end