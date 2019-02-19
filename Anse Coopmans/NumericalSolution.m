%% slide 92:numerical solution
clearvars
clc
close all

N_ini = 50000;
r1=0.48;
N=double.empty();
N(1)=N_ini;

for t=2:11
    N(t)=N(t-1)*(1+r1*1);
end

timesteps=linspace(1,10,10);
amount_timesteps1=N_ini*exp(r1.*timesteps);%komt gewoon uit eerder script

plot(timesteps,N(2:11),'r',timesteps,amount_timesteps1,'k')