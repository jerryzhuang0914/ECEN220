%% Question 1 (a)
clear all
t = -5:1/50:5;
w0 = 2*pi/10;
x = cos(w0*t);
subplot(311)
plot(t,x)
title('cos(w0t)')
xlabel('t')
ylabel('x')

%(b)
y = fftshift(fft(x)); 
f = (t*w0/(1/50));
subplot(312)
plot(f,abs(y))
title('Magnitude')
xlabel('w')
ylabel('|X(w)|')
subplot(313)
plot(f,angle(y))
title('Phase')
xlabel('w')
ylabel('<X(w)')

%% (d)
clear all
t = -5:1/100:5; % step size reduced to 1/100
w0 = 2*pi/10;
x = cos(w0*t);
subplot(311)
plot(t,x)
title('cos(w0t)')
xlabel('t')
ylabel('x')

y = fftshift(fft(x)); 
f = (t*w0/(1/100));
subplot(312)
plot(f,abs(y))
title('Magnitude')
xlabel('w')
ylabel('|X(w)|')
subplot(313)
plot(f,angle(y))
title('Phase')
xlabel('w')
ylabel('<X(w)')