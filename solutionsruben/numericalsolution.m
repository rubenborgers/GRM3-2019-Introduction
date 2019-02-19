clearvars
clc
close all

% numerical
a = zeros(10);
t=[1:1:10];
r=0.48;
N_t=50000;
a(1)=N_t;
for time=2:10
    N_t1=N_t*(1+(r*time))
    a(time)=N_t1
    N_t=N_t1
end
plot(t,a)
hold on
plot(t,population1)
hold off
