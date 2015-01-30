clear all
close all

%%%%%%%% Record Audio %%%%%%%%

RL = 2; %Define the length of the recording
Fs = 8000; %sample rate [S/s]

%% First Recording Right1

recObj1 = audiorecorder(Fs, 16, 1); %Creates a record object with 8k S/s, 16 bit, one channel.
disp('Start Recording 1');
recordblocking(recObj1, RL); %Record to record object for RL seconds.
disp('End of Recording');

myRec1 = getaudiodata(recObj1);
save rec1.mat myRec1

pause(2);

%% Second Recording Right2

recObj2 = audiorecorder(Fs, 16, 1);
disp('Start Recording 2');
recordblocking(recObj2, RL);
disp('End of Recording');

myRec2 = getaudiodata(recObj2);
save rec2.mat myRec2

%% Second Recording Right3

recObj3 = audiorecorder(Fs, 16, 1);
disp('Start Recording 3');
recordblocking(recObj3, RL);
disp('End of Recording');

myRec3 = getaudiodata(recObj3);
save rec3.mat myRec3

play(recObj1);
pause(1);
play(recObj2);
pause(1);
play(recObj3);