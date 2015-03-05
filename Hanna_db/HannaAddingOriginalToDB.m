clc;
close all;
clear all;
% låd kod: 369
P = 9; %N_REFLEC
L = 160; %BLOCK_LENGTH
D = L/2; %OVERLAP
M = 12; %SUBSET_LENGTH
GAMMA = 0.5; % coefficient for pre_emhp

%%%%%%% VÄNSTER %%%%%%%
load Hanna_db/original/v1.mat
add_to_db(rec, 'Hanna_db/database/l1', L, D, P, M, 8000, GAMMA, 0);

load Hanna_db/original/v2.mat
add_to_db(rec, 'Hanna_db/database/l2', L, D, P, M, 8000, GAMMA, 0);

load Hanna_db/original/v3.mat
add_to_db(rec, 'Hanna_db/database/l3', L, D, P, M, 8000, GAMMA, 0);

load Hanna_db/original/v4.mat
add_to_db(rec, 'Hanna_db/database/l4', L, D, P, M, 8000, GAMMA, 0);

load Hanna_db/original/v5.mat
add_to_db(rec, 'Hanna_db/database/l5', L, D, P, M, 8000, GAMMA, 0);



%%%%%%% HÖGER %%%%%%%
load Hanna_db/original/r1.mat
add_to_db(rec, 'Hanna_db/database/r1', L, D, P, M, 8000, GAMMA, 0);

load Hanna_db/original/r2.mat
add_to_db(rec, 'Hanna_db/database/r2', L, D, P, M, 8000, GAMMA, 0);

load Hanna_db/original/r3.mat
add_to_db(rec, 'Hanna_db/database/r3', L, D, P, M, 8000, GAMMA, 0);

load Hanna_db/original/r4.mat
add_to_db(rec, 'Hanna_db/database/r4', L, D, P, M, 8000, GAMMA, 0);

load Hanna_db/original/r5.mat
add_to_db(rec, 'Hanna_db/database/r5', L, D, P, M, 8000, GAMMA, 0);