
function add_to_db(input, string, L, D, P, fs, sound)

% ADD_TO_DB adds a sound signals features vectors in the library, saved as a .mat file.
%   *input* is the soundsignal, *string* is the name of the file,
%   *L* is the length of the blocks, *D* is the overlap,
%   *P* is the number of reflections coefficients,
%   *sound* set to 1 to listen to the signal along the steps
%   *fs* is the sample frequency the input signal was sampled with


figure
plot(input)
title('Original recording')
xlabel('Samples');
ylabel('Amplitude');
if sound == 1
    soundsc(input, fs)
end



% % remove noise in the start and end of the recording, function
input_0 = rm_noise(input);
if sound ==1
    pause(3)
    soundsc(input_0, fs);
end

% pre-emhasis filter with a = 0.95-98, function
input_1 = pre_emph(input_0);
if sound ==1
    pause(3)
    soundsc(input_1, fs);
end

threshold = 1;
% Remove unecessary parts of signal at beginning and end
input_2 = cut(input_1, L, D,threshold);

if sound == 1
    pause(3)
    soundsc(input_2, fs);
end

% Add zeros such that there will be a multiple of L samples, adds zeros in
% the end of the signal
input_2 = [input' zeros(1, L - mod(length(input_2), L))];


% Block framing the signal, function
input_3 = block_frame(input_2, L, D);


% Schur-algorithm -> create matrix form database, function
input_4 = schur_algo(input_3, P);

string = strcat(string, '.mat');
save(string, 'input_4');
end