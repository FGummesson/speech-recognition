clc;
clear all,
close all;

N_WORDS = 2;
N_VERSIONS = 5;
SUBSET_LENGTH = 12;
N_REFLEC = 9;

current_database =[];

%HÖGER VERSIONS
load Hanna_db/database/r1.mat;
s.name = 'right';
s.reflec = db;
current_database = [current_database s];
load Hanna_db/database/r2.mat;
s.name = 'right';
s.reflec = db;
current_database = [current_database s];
load Hanna_db/database/r3.mat;
s.name = 'right';
s.reflec = db;
current_database = [current_database s];
load Hanna_db/database/r4.mat;
s.name = 'right';
s.reflec = db;
current_database = [current_database s];
load Hanna_db/database/r5.mat;
s.name = 'right';
s.reflec = db;
current_database = [current_database s];

%VÄNSTER VERSIONS
load Hanna_db/database/l1.mat;
s.name = 'left';
s.reflec = db;
current_database = [current_database s];
load Hanna_db/database/l2.mat;
s.name = 'left';
s.reflec = db;
current_database = [current_database s];
load Hanna_db/database/l3.mat;
s.name = 'left';
s.reflec = db;
current_database = [current_database s];
load Hanna_db/database/l4.mat;
s.name = 'left';
s.reflec = db;
current_database = [current_database s];
load Hanna_db/database/l5.mat;
s.name = 'left';
s.reflec = db;
current_database = [current_database s];



tempstr = '\tblock_t ';
formatSpec = 'b%d.reflect[%d] = %f;\n';
fid = fopen('test.txt', 'w');
fprintf(fid, '#include "load_db.h" \n\nvoid load_db(db_t* current_db){\n\n');
% strcat för b1 b2 .. strängen
for i= 1:SUBSET_LENGTH
   tempstr = strcat(tempstr, ' b', num2str(i-1));
   if (i < SUBSET_LENGTH )
    tempstr = strcat(tempstr, ', ');
   end
   
end
tempstr = strcat(tempstr, '; \n');
fprintf(fid, tempstr);
fprintf(fid, '\tversion_t version; \n');
fprintf(fid, '\tword_t word; \n');
fprintf(fid, '\tdb_t db; \n');

counter = 0;

for i = 1:N_WORDS
    for j = 1:N_VERSIONS   
        counter = counter + 1;
        for col = 1:SUBSET_LENGTH
            for row = 1:N_REFLEC
                formatSpec = '\tb%d.reflect[%d] = %f;\n';
                fprintf(fid, formatSpec,col-1,row -1,current_database(counter).reflec(row, col));                
            end            
            fprintf(fid, '\tb%d.energy = -1;\n', col-1); % hämta den riktiga energin?
            fprintf(fid, '\n');
            formatSpec = '\tversion.subset[%d] = b%d;\n \n';
            fprintf(fid, formatSpec, col -1 ,col-1  );
        end
        formatSpec = '\tword.versions[%d] = version;\n \n';
        fprintf(fid, formatSpec, j-1); 

    end
        formatSpec = '\tword.name = "%s";\n \n';
        fprintf(fid, formatSpec, current_database(counter).name);
        formatSpec = '\tdb.words[%d] = word;\n \n';
        fprintf(fid, formatSpec, i -1);

end


fprintf(fid, '\t*current_db = db; \n');
fprintf(fid, '\treturn; \n');
fprintf(fid, '} \n');
fclose(fid);

%%



% /*
% 	block_t b1, b2, b3 ;()
% 	b1.reflect[0] = 1;
% 	b1.reflect[1] = 2;
% 	b1.energy = -1;
% 	
% 	b2.reflect[0] = 2;
% 	b2.reflect[1] = 3;
% 	b2.energy = -1;
% 
% 	b3.reflect[0] = 3; 
% 	b3.reflect[1] = 4;
% 	b3.energy = -1;
% 
% 
% 	version_t version1;
% 
% 	version1.subset[0] = b1;
% 	version1.subset[1] = b2;
% 	version1.subset[2] = b3;
% 
% 	
% 	b1.reflect[0] = 2;
% 	b1.reflect[1] = 3;
% 	b1.energy = -1;
% 	
% 	b2.reflect[0] = 3;
% 	b2.reflect[1] = 4;
% 	b2.energy = -1;
% 
% 	b3.reflect[0] = 4;
% 	b3.reflect[1] = 5;
% 	b3.energy = -1;
% 
% 	version_t version2;
% 
% 	version2.subset[0] = b1;
% 	version2.subset[1] = b2;
% 	version2.subset[2] = b3;
% 	
% 	b1.reflect[0] = 3;
% 	b1.reflect[1] = 4;
% 	b1.energy = -1;
% 	
% 	b2.reflect[0] = 4;
% 	b2.reflect[1] = 5;
% 	b2.energy = -1;
% 
% 	b3.reflect[0] = 5;
% 	b3.reflect[1] = 6;
% 	b3.energy = -1;
% 	
% 	version_t version3;
% 
% 	version3.subset[0] = b1;
% 	version3.subset[1] = b2;
% 	version3.subset[2] = b3;
% 
% 	word_t word1;
% 
% 	word1.versions[0] = version1;
% 	word1.versions[1] = version2;
% 	word1.versions[2] = version3;
% 	word1.name = "Test: word1";
% 	db_t database;
% 	database.words[0] = word1;
% 	*current_db = database;
