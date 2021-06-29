% 3a)
clear all
data=importdata('Temperature.txt');
n=data(:,1);
x=data(:,2);

omega0 = -pi; %first frequency sample
omegaM = pi;  %last frequency sample
M = 1000;
k = (0:M)';
omega = omega0 + (omegaM - omega0)*k/M;

X = dtft( x, n, omega )

subplot(311)
stem(n,x)
title('Tempreature x[n]')
xlabel('n')
ylabel('x[n]')
subplot(312)
plot(omega,abs(X))
xlim([-pi pi])
title('Magnitude')
xlabel('w')
ylabel('|X(w)|')
subplot(313)
plot(omega,angle(X))
xlim([-pi pi])
title('Phase')
xlabel('w')
ylabel('<X(w)')

% 3b)
m = 5;
H = (1/m)*exp(-j*omega*(m-1)/2).*(sin(omega*m/2)/sin(omega/2));
if  omega(:,1) == 0
    H = 1;
end

Hav = H(:,1) %store first column into array Hav[]
figure()
subplot(211)
plot(omega,abs(Hav))
xlim([-pi pi])
title('Magnitude')
xlabel('w')
ylabel('|X(w)|')
subplot(212)
plot(omega,angle(Hav))
xlim([-pi pi])
title('Phase')
xlabel('w')
ylabel('<X(w)')

%3c)
Y = Hav.*X;
y1 = invdtft( Y, n, omega ) %INVDTFT of Y
x1 = invdtft( X, n, omega ) %INVDTFT of X
figure()
plot(n,x1,n,y1)
legend('x1','y1')
title('Compare x and y')
xlabel('n')
ylabel('x1,y1')