%function toFile(db)
    
    
    formatSpec = 'b%d.reflect[%d] = %f;\n';
    fid = fopen('test.txt', 'w');
    
    fprintf(fid, 'block_t b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12; \n');
   
    
    for col = 1:12
        for row = 1:8
            fprintf(fid, formatSpec,col,row,db(row,col));
            
        end
            fprintf(fid, 'energy = -1\n');
            fprintf(fid, '\n');
    end
    
        fprintf(fid, 'version_t version1; \n');
        formatSpec = 'version1.version[%d] = b%d;\n';
        for i = 1:12
            fprintf(fid, formatSpec, i-1, i);
        end
    fclose(fid);

%end