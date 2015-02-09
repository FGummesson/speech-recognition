
function create_features(input, string, L, D, P, fs, sound)

% CREATE_FEATURES = (input, string, L, D, P, fs, sound)
%   Creates features vectors of the input sound signal, saved as a .mat file.
%   *input* is the soundsignal as a columnvector
%   *string* is the name of the file,
%   *L* is the length of the blocks, *D* is the overlap,
%   *P* is the number of reflections coefficients,
%   *sound* set to 1 to listen to the signal along the steps
%   *fs* is the sample frequency the input signal was sampled with


figure (1)
subplot(221)
plot(input)
title('Original recording')
xlabel('Samples');
ylabel('Amplitude');

figure (2)
fft_(input, length(input), fs, 221)
if sound == 1
    soundsc(input, fs)
end



% removing low frequency noise with filter(-s)
input_0 = rm_noise(input);

figure (1)
subplot(222)
plot(input_0)
title('After high and low pass filtering')
xlabel('Samples');
ylabel('Amplitude');

figure (2)
fft_(input_0, length(input_0), fs, 222)

if sound ==1
    pause(3)
    soundsc(input_0, fs);
end

% pre-emhasis filter with a = 0.95-98, function
input_1 = pre_emph(input_0);

figure (1)
subplot(223)
plot(input_1)
title('After pre-emphasis')
xlabel('Samples');
ylabel('Amplitude');

figure (2)
fft_(input_1, length(input_1), fs, 223)
if sound ==1
    pause(3)
    soundsc(input_1, fs);
end

% Remove unecessary parts of signal at beginning and end
threshold = 1;
input_2 = cut(input_1, 100, 0,threshold);

figure (1)
subplot(224)
plot(input_2)
title('After cutting the signal')
xlabel('Samples');
ylabel('Amplitude');

figure (2)
fft_(input_2, length(input_2), fs, 224)
if sound == 1
    pause(3)
    soundsc(input_2, fs);
end

% Add zeros such that there will be a multiple of L samples
%input_3 = [input_2' zeros(1, L - mod(length(input_2), L))];


% Block framing the signal
input_4 = block_frame(input_2, L, D);



% Schur-algorithm -> create matrix form database
input_5 = schur_algo(input_4, P);

% Divide into subsets and calculate the mean of the coefficients
M = 8; % number of subsets

features = create_subsets(input_5, M);

string = strcat(string, '.mat');
string = strcat('feature matrices/', string);

save(string, 'features');
end