function Frames = BlockFrame(input, L, D )
% Framing the signal into blocks with 160 samples each and perform a
% windowing on each block.
% Detailed explanation goes here
% L is the length of each buffer segment, D is the overlap
y = buffer(input, L, D);
window = hanning(L);
for i=1:length(y)
    y(:, i) = window.*y(:,i);    
end

Frames = y;
end

