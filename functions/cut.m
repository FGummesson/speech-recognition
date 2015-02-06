function [ output ] = cut( input, b_length, overlap, threshold )
% Cut out the important values of a speech signal.
    % cut(signal, b_length, overlap, threshold)
    % b_length = block length
    % overlap = amount of overlap in samples
    % threshold = when to start listening. Around 1.

    y = buffer(input, b_length, overlap);
    
    row = length(y(1,:));
    
    first = 0;
    for i = 1:row
        temp = y(:,i);
        if norm(temp) > threshold
            first = ((i -4) * b_length);
            break;
        end
    end
    
    if first < 1
        first = 1;
    end
    
    last = row * b_length;
    for i = fliplr(1:row)
        temp = y(:,i);
        if norm(temp) > threshold
            last = (i + 2) * b_length;
            break;
        end
    end
    
    if last > length(input)
        last = length(input);
    end
    
    output = y(:);
    output = output(first:last);
    
end

