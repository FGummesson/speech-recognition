clc;
close all;
clear all;
load task5.mat


add_to_db(t1, 'four', 160, 80, 10, 16000, 0);

create_features(x1,'41', 160, 80, 10, 16000, 0);
create_features(x5,'42', 160, 80, 10, 16000, 0);


add_to_db(t2, 'eigth', 160, 80, 10, 16000, 0);

create_features(x2,'81', 160, 80, 10, 16000, 0);
create_features(x4,'82', 160, 80, 10, 16000, 0);



add_to_db(t3, 'nine', 160, 80, 10, 16000, 0);
create_features(x3,'91', 160, 80, 10, 16000, 0);
