clc;clear all;close all;
format long
crossing = xlsread('data.xls', 1, 'B2:E583');
crossing(:,5) = 0;
disp(crossing);
save crossing;
