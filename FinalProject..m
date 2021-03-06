clear all; 
clc; 

%% Open the main screen 

Screen('Preference','ConserveVRAM',64); 
Screen('Preference', 'SkipSyncTests', 1); 
[onScreen, screenRect] = Screen('OpenWindow',0);    % opens the mainscreen 
Screen('FillRect', onScreen, [255 255 255]);        % paints screen black (on the offscreen buffer) 
%% Define Variables 
centerX = screenRect(3)/2; % center ‘X’ coordinate 

centerY = screenRect(4)/2; % center ‘Y’ coordinate 

NumTrials = 50; 

dir(‘ExperimentFiles/*.jpg’); % sets current directory to ExperimentFiles folder, where there will be two other folders (1) Armed Files (2) Unarmed Files 

InstructTrial = ‘You will see two images appear. Press the F key if the cue points to a weapon. Press the J key if the cue does not point towards a weapon.’;  
% the “f” key is key number 70 
% the “j” key is key number 74 
armedStimuli = dir(‘./ExperimentFiles/ArmedFiles/*.jpg’); 
unarmedStimuli = dir(‘./ExperimentFiles/UnarmedFiles/*.jpg’);  

%% D struct variables 
D.subNum =
D.subID =

% load images (at least 2 folders) 
% counterbalance conditions and randomize trial order 
% Text string telling subjects instructions  

DrawFormattedText(onScreen, instructTrial, [centerX],[centerY],[40 115 80]); 
Screen('Flip', onScreen); 
pause (2); 
% store text string in D struct 
% clear text string, pause 2 seconds, and then start the experiment

% run trials 
for i=1: NumTrials 
  % show current images (one with gun, one without) 
  % wait for a response (keyboard input) 
  while  
  % check to see if response is correct 
  % record the data in the D struct  
  end
end 

% close main screen 
Screen('CloseAll'); 

% save your D struct in a .mat file in the DataFiles folder  
% generate a figure for display 
