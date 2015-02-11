function output = rm_noise(input)
% remove noise from speech signal
%lp = LowPassFilter;
output = filter([1, -1], [1,-0.94], input); % high pass filter
%output = filter(lp.Numerator,1, output);    % low pass filter

end