%% function which adds a word to the database
function output = add_to_db(input)

% load speech-file alt. is input to the function

% remove noise in the start and end of the recording, function
input_0 = rm_noise(input);

% pre-emhasis filter with a = 0.95-98, function
input_1 = pre_emph(input_0);

% Block framing the signal, function
input_2 = block_frame(input_1);

% Level detection using zero-crossing rate, function
input_3 = level_detect(input_2);

% Schur-algorithm -> create matrix form database, function
input_3 = schur_algo(input_2);

output;