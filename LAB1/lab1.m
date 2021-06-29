%Question 1 
%(a)
t = 0:0.001:1;
f0 = 4;
xt = sin(2*pi*f0*t);
plot(t,xt);
hold on
%(b)
n1 = 1:1:32;
fs1 = 8*f0;
ts1 = 1/fs1;
x1n = sin(2*pi*n1*f0*ts1);
hold on
stem((n1*ts1),x1n)
n2 = 1:1:10;
fs2 = 5*f0/2;
ts2 = 1/fs2;
x2n = sin(4*pi*n2*f0*ts2);
hold on
stem((n2*ts2),x2n)

%Question 2
%System A
n=0:5;
a = 2;
b = 3;
x1n = 0.8.^n;
x2n = cos(n);
z = a * x1n + b * x2n;			%put two input signal into linear equation first.
yA1 = 2.^z;					%then put linear equation into system A to verify linearity.
stem(n,yA1,'r', 'linewidth',1.5)
hold on
y1 = 2.^(0.8.^n);		%put two input signal into system A first
y2 = 2.^(cos(n));
yA2 = a * y1 + b * y2;		%then put system A which has input signal into linear equation to verify linearity
stem(n,yA2,'b','linewidth',1.5)
hold off

%System B
n=0:5;
a = 2;
b = 3;
x1n = 0.8.^n;
x2n = cos(n);
z = a * x1n + b * x2n;			%put two input signal into linear equation first.
yB1 = n.* z;					%then put linear equation into system A to verify linearity.
stem(n,yB1,'r', 'linewidth',3)
hold on
y1 = n.* (0.8.^n);		%put two input signal into system A first
y2 = n.* (cos(n));
yB2 = a * y1 + b * y2;		%then put system A which has input signal into linear equation to verify linearity
stem(n,yB2,'b','linewidth',1.5)
hold off

%Question 3
n = 0:10;
n1 = 0:20;
hn = 0.7.^n;
oldparam = sympref('HeavisideAtOrigin',1);
u1 = heaviside(n);
u2 = heaviside(n-4);
xn = u1-u2;
y = conv(hn,xn);
stem(n1,y)