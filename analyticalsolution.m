%analytical solution
R3=0.48;
N0=50000;
t=linspace(1,10,10);
N3=exp(t*R3)*N0;
plot (t, N3,'r')