function Frame = BlockFrame( input )
% Framing the signal into blocks with 160 samples each and perform a
% hamming window on each block.
%   Detailed explanation goes here

y = buffer(input, 160, 80);

Frame = y;
end

