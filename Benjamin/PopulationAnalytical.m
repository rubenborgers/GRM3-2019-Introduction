clearvars
clc
close all

r=0.48;
sizeC=50e3;
eqPop=4;
N_Ini=50e3;
tot_eq_pop=11.35e6;

T_Neq=1/r*(log(tot_eq_pop/N_Ini));
disp(num2str(T_Neq))


totTime=15;
dt=1;
time=1:dt:totTime;
N2=exp(time*r+log(N_Ini));
plot(time,N2)