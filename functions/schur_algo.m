function output = schur_algo(input, P)
% Calculate the reflection coefficients K, that is, creating the feature vectors
storlek = size(input);
storlek = storlek(2); % number of columns
output = zeros(P, storlek);
for i = 1:storlek
    rxx = xcorr(input(:, i), input(:, i), P);
    rxx = rxx(P+1:end);
    [K, e] = schurrc(rxx); % e is the error and energy of the block
    output(:,i) = K;
    
end
end