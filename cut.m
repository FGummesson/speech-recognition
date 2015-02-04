function [ signal ] = cut( signal, b_length, overlap, threshold )
% Cut out the important values of a speech signal.
    
    y = buffer(signal, b_length, overlap);
    
    row = length(y(1,:));
    
    for i = 1:row
        temp = y(:,i);
        if norm(temp) < threshold
            y(:,i) = zeros(b_length, 1);
        end
    end
    signal = y(:);
    
    i = 1;
    while i < length(signal)
        if signal(i) ~= 0
            break;
        end
        i = i +1;
    end
    
    
    j = length(signal);
    
    while j > i
       if signal(j) ~= 0
           break;
       end
       j = j -1;
    end
    
    signal = signal(i:j);
%     
%     
%     for i = 1:length(signal)
%         if signal(i) ~= 0
%             signal = signal(i:length(signal));
%             break;
%         end
%   
%     for i = fliplr(1:length(signal))
%         if signal(i) ~= 0
%             signal = signal(i:length(signal));
%             break;
%         end
%     end
    
end

