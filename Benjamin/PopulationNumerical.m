clearvars
clc
close all

r=0.48;
% sizeC=50e3;
% eqPop=4;
N_Ini=50e3;
tot_pop=11e6;

totTime=12;
dt=1;

time=dt:dt:totTime;
N=zeros(size(time,1),size(time,2));

N(1)=N_Ini;
for t=2:numel(time)
    dN=r*N(t-1)*dt;
    N(t)=N(t-1)+dN;
end
%%
figure;
plot(time,N)