% Solve the problem numerically and compare with analytic solution
clearvars
clc
close all

t = linspace(0,10,11);
r = 0.48;
N_0 = 50e3;

%% Numerical
N_n = zeros(1,11);
N_n(1)= N_0;
for i=2:length(t)
    N_n(i) = N_n(i-1) + N_n(i-1) * r;
end

%% Analytical
N_a = N_0 .* exp(r.*t);

%% Plot
plot(t,N_a)
hold on
plot(t,N_n)
xlabel('Years')
ylabel('Boar population')
title('Evolution boar population')
legend('Analytic', 'Numerical')