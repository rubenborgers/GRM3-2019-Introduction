clearvars
clc
close all

%% for-loop
N=50e3;
r=0.48;
dt=1;
B=[];
for t=1:10
    N=r*N*dt+N;
    B(t)=N;
end
figure
plot (B)

%% while loop
C=[];
while t>10
    N_while = r+N_while+dt+N_while;
    C(t)=N_while;
    t=t+1;
end