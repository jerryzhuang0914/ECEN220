%% Question 2 (a) 1.sine
clear all
t1 = 0:1/50:5;
w0 = 2*pi/10;
x1 = sin(w0*t1);
subplot(311)
plot(t1,x1)
title('sin(w0t)')
xlabel('t1')
ylabel('x1')

y1 = fftshift(fft(x1));
f1 = (t1*w0/(1/50));
subplot(312)
plot(f1,abs(y1))
title('Magnitude')
xlabel('w')
ylabel('|X(w)|')
subplot(313)
plot(f1,angle(y1))
title('Phase')
xlabel('w')
ylabel('<X(w)')

%% 2.exponetial
clear all
t2 = 0:1/50:10;
w0 = 2*pi/10;
x2 = exp(j*w0*t2);
subplot(411)
plot(t2,real(x2))
title('Real')
xlabel('t2')
ylabel('x2')
subplot(412)
plot(t2,imag(x2))
title('Imaginary')
xlabel('t2')
ylabel('x2')

y2 = fftshift(fft(x2));
f2 = (t2*w0/(1/50));
subplot(413)
plot(f2,abs(y2))
title('Magnitude')
xlabel('w')
ylabel('|X(w)|')
subplot(414)
plot(f2,angle(y2))
title('Phase')
xlabel('w')
ylabel('<X(w)')

%% 3.delta
clear all
t3 = -1:0.1:1;
x3 = dirac(t3);
idx = x3 == Inf; % find Inf
x3(idx) = 1;     % set Inf to finite value
subplot(311)
stem(t3,x3)

y3 = fft(x3);
f3 = (t3/0.1);
subplot(312)
plot(f3,abs(y3))
title('Magnitude')
xlabel('w')
ylabel('|X(w)|')
subplot(313)
plot(f3,angle(y3))
title('Phase')
xlabel('w')
ylabel('<X(w)')

%% 4.U(t)
clear all
t4 = -1:0.0001:1;
x4 = heaviside(t4);
subplot(311)
plot(t4,x4)
title('u(t)')
xlabel('t4')
ylabel('x4')

y4 = fftshift(fft(x4));
f4 = (t4/0.0001);
subplot(312)
plot(f4,abs(y4))
title('Magnitude')
xlabel('w')
ylabel('|X(w)|')
subplot(313)
plot(f4,angle(y4))
title('Phase')
xlabel('w')
ylabel('<X(w)')

%% 5.delta(t-t0)
clear all
t5 = -1:0.1:1;
x5 = dirac(t5-0.6);
idx = x5 == Inf; % find Inf
x5(idx) = 1;     % set Inf to finite value
subplot(311)
stem(t5,x5)
title('delta(t-0.6)')
xlabel('t5')
ylabel('x5')

y5 = fft(x5);
f5 = (t5/0.1);
subplot(312)
plot(f5,abs(y5))
title('Magnitude')
xlabel('w')
ylabel('|X(w)|')
subplot(313)
plot(f5,angle(y5))
title('Phase')
xlabel('w')
ylabel('<X(w)')

%% 6. x(t) = e^-at*u(t)
clear all
t6 = -5:0.0001:5;
ut = heaviside(t6);
x6 = exp(-t6).*ut;
subplot(311)
plot(t6,x6)
title('exp(-t6).* u(t)')
xlabel('t6')
ylabel('x6')

y6 = fftshift(fft(x6));
f6 = t6/0.0001;
subplot(312)
plot(f6,abs(y6))
title('Magnitude')
xlabel('w')
ylabel('|X(w)|')
subplot(313)
plot(f6,angle(y6))
title('Phase')
xlabel('w')
ylabel('<X(w)')

%% 7. x(t) = 1, |t|<T1; 0, T1<|t|<T/2
clear all
% for t7 = -10:10
% T = 4;
% T1 = 1;
% if abs(t7) < T1
%    x7 = 1;
% else
%     T1 < abs(t7) && abs(t7) < T/2
%         x7 = 0;
%     end
% end
% plot(t7, x7*ones(size(t7)))

t7 = -10:0.01:10;
x7 = square(t7,30); % 30% duty cycle
subplot(311)
plot(t7,x7,'linewidth',2)
title('square wave')
ylabel('x7')
xlabel('t7')

y7 = fftshift(fft(x7));
f7 = t7/0.01;
subplot(312)
plot(f7,abs(y7))
title('Magnitude')
xlabel('w')
ylabel('|X(w)|')
subplot(313)
plot(f7,angle(y7))
title('Phase')
xlabel('w')
ylabel('<X(w)')
