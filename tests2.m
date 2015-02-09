clc;
close all;
clear all;
load task5.mat

P = 15;
L = 100;
D = L/2;
add_to_db(t1, 'four', L, D, P, 16000, 0);

create_features(x1,'41', L, D, P, 16000, 0);
create_features(x5,'42', L, D, P, 16000, 0);


add_to_db(t2, 'eigth', L, D, P, 16000, 0);

create_features(x2,'81', L, D, P, 16000, 0);
create_features(x4,'82', L, D, P, 16000, 0);



add_to_db(t3, 'nine', L, D, P, 16000, 0);
create_features(x3,'91', L, D, P, 16000, 0);
