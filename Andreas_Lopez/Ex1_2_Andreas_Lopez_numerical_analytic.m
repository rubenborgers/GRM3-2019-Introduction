% Solve the problem numerically and compare with analytic solution

clearvars
clc
close all

t = linspace(0,10,11);      %maken een array met tijdstapjes in
r = 0.48;                   %growth rate
N_0 = 50e3;                 %start pop.

%% Numerical => checken het vorige jaar, onderschat de groei
% dN/dT = rN and dN(t)/dt = N(t+delta(t))-N(t)/delta(t)
% rN(t) = N(t + delta(t))-N(t)/delta(t)
% N(t + delta(t)) = N(t) + rN(t)delta(t) = N(t)*(1 + r*delta(t))

N_num = zeros(1,11);
N_num(1)= N_0;
for i=2:length(t)       %vanaf tijd 2 tot het einde
    N_num(i) = N_num(i-1) + N_num(i-1) * r;
end

%% Analytical => werkt per kleine time step zal grotere groei geven dan numerical solution

N_ana = N_0 .* exp(r.*t);

%% Plot
plot(t,N_ana,'-.')
hold on
plot(t,N_num,'--')
xlabel('Years')
ylabel('Boar population')
title('Evolution boar population')
legend('Analytic', 'Numerical')