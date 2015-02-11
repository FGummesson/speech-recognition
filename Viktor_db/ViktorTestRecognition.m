clc;
close all;
clear all;
load task5.mat

% Call the function 'matching' to calculate the error of the 
% word-matching. Input is the feature matrix and data base

load Viktor_db/database/Right1
right1 = db;

load Viktor_db/database/Right2
right2 = db;

load Viktor_db/database/Right3
right3 = db;

load Viktor_db/database/Right4
right4 = db;

load Viktor_db/database/Right5
right5 = db;

r1_mot_r1 = matching(right1, right1)
r1_mot_r2 = matching(right1, right2)
r1_mot_r3 = matching(right1, right3)
r1_mot_r4 = matching(right1, right4)
r1_mot_r5 = matching(right1, right5)
