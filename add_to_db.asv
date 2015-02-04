
function add_to_db(input, string, L, D, P, fs)

% ADD_TO_DB adds a sound signals features vectors in the library, saved as a .mat file.
%   *input* is the soundsignal, *string* is the name of the file,
%   *L* is the length of the blocks, *D* is the overlap,
%   *P* is the number of reflections coefficients, 
%   *fs* is the sample frequency the input signal was sampled with


figure
plot(input)
title('Recording')
xlabel('Samples');
ylabel('Amplitude');
soundsc(input, fs)


energy_threshold = 0.2;

% % remove noise in the start and end of the recording, function
input_0 = rm_noise(input);


% pre-emhasis filter with a = 0.95-98, function
input_1 = pre_emph(input);


% Remove unecessary parts of signal at beginning and end

input = [input' zeros(1, L - mod(length(input), L))];



% Block framing the signal, function
input_2 = block_frame(input_1, L, D);


P = 10;
% Schur-algorithm -> create matrix form database, function
input_3 = schur_algo(input_2, P);

string = strcat(string, '.mat');
save(string, 'input_3');
end