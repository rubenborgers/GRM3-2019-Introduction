%numerical solution (slide 92)
close all
R=0.48;
X=50000;
Nt= 11.35e6;
totTime=10;
dt=1;
time=dt:dt:totTime;
N=zeros(size(time,1),size(time,2)); %shape of array to be the same as the shape of the time array
N(1)=X;
for t=2:numel(time)
    N(t)=N(t-1)*(dt*R+1)
end
plot (time, N, ':')
xlabel('time')
ylabel('solution')
hold on
plot (time, N3,'r') 
hold off