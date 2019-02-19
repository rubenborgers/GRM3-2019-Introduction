clc
clearvars
close all
%% NUMERISCHE OPLOSSING
% Gegevens
r = 0.48;   % Groeisnelheid 
dt = 0.5;   % Tijdsstap [jaar]
tijd = [1:dt:15];  % Tijdsperiode waarover gekeken wordt [jaar]
N = zeros(1, numel(tijd));  %Preallocation
N(1) = 50000;    % Startpopulatie

% Berekening
for t = 2:numel(tijd)
    dN = r.*N(t-1).*dt;
    N(t) = N(t-1) + dN;
end

%% ANALYTISCHE OPLOSSING
% Gegevens
N0 = 50000;

% Berekening
Nt = exp(r.*tijd + log(N0));

%% AFBEELDING
plot(tijd, N, '-r', tijd, Nt,'--b')
xlabel('Tijd (jaren)')
ylabel('Aantal zwijnen')
title('Zwijnengroei: analytisch vs numerisch')
legend('Numerische oplossing', 'Analytische oplossing')

