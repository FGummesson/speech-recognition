

clc;
close all;
clear all;
load task5.mat

% 'four', t1,x1, x5
% 'eigth', t2, x2, x4
% 'nine', t3, x3


% Call the function 'matching' to calculate the error of the 
% word-matching. Input is the feature matrix and data base
load four.mat
load 41.mat
four0 = matching(db, db)
four1 = matching(features , db)
load 42.mat
four2 = matching(features, db)
load 81.mat
four3 = matching(features, db)
