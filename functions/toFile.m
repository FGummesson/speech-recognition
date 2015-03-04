%function toFile(h1, h2, h3)
   
    h = [h1, h2, h3];
    
    formatBlock = 'b%d.reflect[%d] = %f;\n';
    formatVersion = 'version_t version%d; \n';
    formatVersionLong = 'version%d.version[%d] = b%d;\n';
    formatWord = 'word1.word[%d] = version%d;\n';

    fid = fopen('test.txt', 'w');
    
    fprintf(fid, 'block_t b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12; \n');
   
    for k = length(h)
    
    for col = 1:12
        for row = 1:8
            fprintf(fid, formatBlock,col,row,h(row,col*k));
            
        end
            fprintf(fid, 'energy = -1\n');
            fprintf(fid, '\n');
    end
        

        fprintf(fid, formatVersion, k);

        for i = 1:12
            fprintf(fid, formatVersionLong,k, i-1, i);
        end
    
        fprintf(fid, '\n');
        
    end
    for k = 1:3
        fprintf(fid, formatWord, k-1, k);
    end
    
    fprintf(fid, 'db_t database;\n database.db[0] = word1;\n return;');
    
    fclose(fid);
%end