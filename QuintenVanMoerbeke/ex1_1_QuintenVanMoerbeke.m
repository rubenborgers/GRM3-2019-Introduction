% Solve the pop growth problem

clearvars
clc
close all

r = 0.48;
N_0 = 50e3;
N_t = 11.35e6;

%% General function

t_end = timeToPop(r, N_0, N_t);
disp(['Time required = ' num2str(t_end)]); % [] merge strings together

%% Anonymous function

timeToPop_An = @(r, N_0, N_t) 1/r * log (N_t/N_0);
t_end = timeToPop_An(r, N_0, N_t);
disp(['Time required = ' num2str(t_end)]); % [] merge strings together

%% Arrays: timeToPop

rArray = linspace(0.01,0.05,25);
tArray = timeToPop(rArray, N_0, N_t);
plot(rArray,tArray)
xlabel('Growth rate')
ylabel('Years')
title('Time until equilibrium population by growth rate')

%% Arrays: popAtTime

t = linspace(0,10,11);
N = N_0 .* exp(r.*t);
plot(t,N)
xlabel('Years')
ylabel('Boar population')
title('Evolution boar population')
