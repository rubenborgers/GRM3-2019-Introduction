clearvars
clc
close all

r=0.48;
N=zeros(1,10);
N(1)=50e3;
totaltime=12;
dt=1;
time=dt:dt:totaltime;
for t=2:numel(time)
    N(t)=r*N(t-1)*dt+N(t-1)
end 

figure;
plot(time,N)