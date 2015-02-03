%% function which adds a word to the database
function add_to_db(input, string)

energy_threshold = 0.2;





% Remove unecessary parts of signal at beginning and end


% % remove noise in the start and end of the recording, function
% input_0 = rm_noise(input);

% pre-emhasis filter with a = 0.95-98, function
input_1 = pre_emph(input);


L = 160;
D = L/2;
% Block framing the signal, function
input_2 = block_frame(input_1, L, D);

% % Level detection using zero-crossing rate, function
% input_3 = level_detect(input_2);


P = 10;
% Schur-algorithm -> create matrix form database, function
input_3 = schur_algo(input_2, P);

string = strcat(string, '.mat');
save(string, 'input_3');
end