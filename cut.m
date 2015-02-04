function [ signal ] = cut( signal, b_length, overlap, threshold )
% Cut out the important values of a speech signal.
    
    y = buffer(signal, b_length, overlap);
    
    row = length(y(1,:));
    
    first = 0;
    for i = 1:row
        temp = y(:,i);
        if norm(temp) > threshold
            first = (i - 4) * b_length;
            break;
        end
    end
    
    last = row * b_length;
    for i = fliplr(1:row)
        temp = y(:,i);
        if norm(temp) > threshold
            last = (i + 2) * b_length;
            break;
        end
    end
    
    signal = y(:);
    signal = signal(first:last);
    
end

