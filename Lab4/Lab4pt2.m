%% 2b)
clear all
omega0 = -2*pi; %first frequency sample
omegaM = 2*pi;  %last frequency sample
M = 1000;
k = (0:M)';
omega = omega0 + (omegaM - omega0)*k/M;

x = [-3,2,6,6,4]';
n = [0:length(x)-1]'-1;
X = dtft( x, n, omega ) %DTFT
x1 = invdtft( X, n, omega ) %INVDTFT

stem(n,x1)
title('x[n]')
xlabel('n')
ylabel('x[n]')