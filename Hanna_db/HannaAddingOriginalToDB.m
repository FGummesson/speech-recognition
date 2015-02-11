clc;
close all;
clear all;
% låd kod: 369
P = 11;
L = 160;
D = L/2;
threshold = 0.05;

%%%%%%% VÄNSTER %%%%%%%
load Left1.mat
add_to_db(rec, 'Hanna_db/database/l1', L, D, P, 8000, threshold, 0);

load Left2.mat
add_to_db(rec, 'Hanna_db/database/l2', L, D, P, 8000, threshold, 0);

load Left3.mat
add_to_db(rec, 'Hanna_db/database/l3', L, D, P, 8000, threshold, 0);

load Left4.mat
add_to_db(rec, 'Hanna_db/database/l4', L, D, P, 8000, threshold, 0);

load Left5.mat
add_to_db(rec, 'Hanna_db/database/l5', L, D, P, 8000, threshold, 0);



%%%%%%% HÖGER %%%%%%%
load Right1.mat
add_to_db(rec, 'Hanna_db/database/r1', L, D, P, 8000, threshold, 0);

load Right2.mat
add_to_db(rec, 'Hanna_db/database/r2', L, D, P, 8000, threshold, 0);

load Right3.mat
add_to_db(rec, 'Hanna_db/database/r3', L, D, P, 8000, threshold, 0);

load Right4.mat
add_to_db(rec, 'Hanna_db/database/r4', L, D, P, 8000, threshold, 0);

load Right5.mat
add_to_db(rec, 'Hanna_db/database/r5', L, D, P, 8000, threshold, 0);