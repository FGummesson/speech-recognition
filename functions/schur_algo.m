function output = schur_algo(input, P)
% Calculate the reflection coefficients K, that is, creating the feature vectors
output = zeros(length(input), P);
for i = 1:length(input)
    rxx = xcorr(input(:, i), input(:, i), P);
    rxx = rxx(P+1:end);
    [K, e] = schurrc(rxx); % e is the error and energy of the block
    output(:,i) = K;
    
end
end
