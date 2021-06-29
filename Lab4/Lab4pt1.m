%% 1b)
clear all
omega0 = -2*pi; %first frequency sample
omegaM = 2*pi;  %last frequency sample
M = 1000;
k = (0:M)';
omega = omega0 + (omegaM - omega0)*k/M;

x = [-3,2,6,6,4]';
n = [0:length(x)-1]'-1;
X = dtft( x, n, omega )

subplot(311)
stem(n,x)
title('x[n]')
xlabel('n')
ylabel('x[n]')
subplot(312)
plot(omega,abs(X))
xlim([-2*pi 2*pi])
title('Magnitude')
xlabel('w')
ylabel('|X(w)|')
subplot(313)
plot(omega,angle(X))
xlim([-2*pi 2*pi])
title('Phase')
xlabel('w')
ylabel('<X(w)')

%% 1c)

clear all
omega0 = -2*pi; %first frequency sample
omegaM = 2*pi;  %last frequency sample
M = 1000;
k = (0:M)';
omega = omega0 + (omegaM - omega0)*k/M;

x = [-3,2,6,6,4]';
n = [0:length(x)-1]'-3; %change the location of n=0
X = dtft( x, n, omega )

subplot(311)
stem(n,x)
title('x[n]')
xlabel('n')
ylabel('x[n]')
subplot(312)
plot(omega,abs(X))
xlim([-2*pi 2*pi])
title('Magnitude')
xlabel('w')
ylabel('|X(w)|')
subplot(313)
plot(omega,angle(X))
xlim([-2*pi 2*pi])
title('Phase')
xlabel('w')
ylabel('<X(w)')