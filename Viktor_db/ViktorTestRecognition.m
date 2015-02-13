clc;
close all;
clear all;


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

load Viktor_db/database/Left1
l1 = db;

load Viktor_db/database/Left2
l2 = db;

load Viktor_db/database/Left3
l3 = db;

load Viktor_db/database/Left4
l4 = db;

load Viktor_db/database/Left5
l5 = db;

load Viktor_db/database/NotLR
NotLR = db;

r1_mot_r1 = matching(right2, right1)
r1_mot_r2 = matching(right2, right2)
r1_mot_r3 = matching(right2, right3)
r1_mot_r4 = matching(right2, right4)
r1_mot_r5 = matching(right2, right5)

r1_mot_l1 = matching(right2, l1)
r1_mot_l2 = matching(right2, l2)
r1_mot_l3 = matching(right2, l3)
r1_mot_l4 = matching(right2, l4)
r1_mot_l5 = matching(right2, l5)

%total_error_right = r1_mot_r1 + r1_mot_r2 + ...
%    r1_mot_r3 + r1_mot_r4 + r1_mot_r5
X = [r1_mot_r1 r1_mot_r2 ...
    r1_mot_r3 r1_mot_r4 r1_mot_r5];
aver_error_right = mean(X)

%total_error_left = r1_mot_l1 + r1_mot_l2 + ...
%    r1_mot_l3 + r1_mot_l4 + r1_mot_l5
X = [r1_mot_l1 r1_mot_l2 ...
    r1_mot_l3 r1_mot_l4 r1_mot_l5];
avr_error_left = mean(X)

NotLR_mot_r2 = matching(right2, NotLR)
NotLR_mot_l1 = matching(l1, NotLR)
