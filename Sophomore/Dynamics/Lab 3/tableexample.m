clear all;  clc;  close all; 
T = table(['M';'F';'M'],[45;32;34],...
    ['NY';'CA';'MA'],logical([1;0;0]),...
    'VariableNames',{'Gender' 'Age' 'State' 'Vote'})