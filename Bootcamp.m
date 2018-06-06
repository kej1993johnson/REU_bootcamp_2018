%% Descriptive Statistics
close all; clear all; clc % closes all figures, clears your workspace, 
% clears your command window
% Load the sample data ( if you downloaded the whole folder, you should see
% this file adjacent to this script in your "Current Folder"
load count.dat
% This makes a column vector called count, which you can view by clicking
% on count in your workspace and looking at it under the Variables window.

%% Descriptive Statistics of the Count Data
% Find the maximum value in each column
max_val = max(count)
% Calculate the mean of each column
x_bar = mean(count)
% Calculate the standard deviation of each column
sigma = std(count)

%NOTE: Be careful not to name the mean, maximum, and standard deviation the
%same as the function (i.e. max = max(count)). This overrides the
%definition of max to be that variable instead of the function.

%% Load in data set from your cell data measurements in excel
matlab = xlsread('cell_data_matlab.xls');

x = matlab(:,1); % first column is your cell number
y = mean(matlab(:,2:4),2);
E = std(matlab(:,2:4),0,2);

figure;
scatter(x,y)
xlabel ('cell number')
ylabel ('absorbance')
title ('Absorbance vs. Cell Number')

figure;
errorbar(x,y,E,'o')
xlabel ('cell number')
ylabel ('absorbance')
title ('Absorbance vs. Cell Number with Errorbars')

% In your command window: enter cftool
% For x data, select x (this is your cell number)
% For y data, select y (this is your absorbance)
% Select polynomial curve type, with a degree of 1
% You will see a function of the form
% f(x) = p1(x) +p2
% This corresponds to:
% Absorbance = p1(cell number) + p2

% Record these numbers and set them in the next section of code.


%% Exercise from the curve fitting output
% Obtain p1 and p2, and use these values to write a code to predict the
% estimated cell numbers for the mystery data absorbances (there will be
% 7)

load mystery.txt

% Each column is the absorbance measurements from a single well, so the
% data is in the same format as the matlab data except it is missing the
% column that tells it the cell number. This is what you will be estimating
% based on your curve fitting results and the three values of absorbance
% measurements.


%% Plot the data with error bars from the matlab and mystery data sets, colored separately
% Hint, create a figure, plot one data set, and use the hold on command to
% allow the second data set to be plotted on top in a different color






