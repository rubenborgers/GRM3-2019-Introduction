%% constants
%population logistic growth
r=0.48;
Nini=50000;
K=11.2*1e6; %carrying capacity

N_store=[]; %structure to store population
T_store=[];

time=0;
N=Nini;
iter=0;
dt=0.01;

alpha=1.2*r; %20% more growth rate 

%until K is reached
while N<0.9999*K
    iter=iter+1;
    time=time+dt;
    dN=r.*N*(1-N/K);
    N_store(iter)=N;
    T_store(iter)=time;
end

figure;
plot(T_store,N_store)


% look at differences with exponential 
%% Analytical solution
t=30
A=(K-Nini)/Nini;
N_t=@(t) K./(A.*exp(-r.*t)+1); %periods are vector operations

%% plotting

%% difference in numerical and analytical solutions using different time steps (dt); addition of hunting coeficent 20% more and less 
r=0.48;
Nini=50000;
% K=11.2*1e6; %carrying capacity not needed
N_store=[]; %structure to store population
T_store=[];

time=30; %years
N=Nini;
iter=0;
dt=1;

alpha=1.2*r; %20% more growth rate

%until K is reached
while N<30
    iter=iter+1;
    time=time+dt;
    H=N*alpha;
    dN=r.*N-H;
    N=N+dN*dt;
    N_store(iter)=N;
    T_store(iter)=time;
end

figure;
plot(T_store,N_store)