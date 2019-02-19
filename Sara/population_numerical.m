clearvars
clc
close all

N0=50e3;
N=11.35e6;

r_row=linspace(0.01,0.05,25);


t=CalculateTime(N,N0,r_row);
disp(num2str(t))
plot(r_row,t)


    
