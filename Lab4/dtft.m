function [X] = dtft( x, n, omega )
V=exp(-j*omega*n'); %the V matrix 
X=V*x; % the DTFT
% Computes the DTFT
% X = dtft( x, n, omega )
% where X = DTFT at each value of omega % x = samples of a discrete-time signal % n = time indices for the signal
% omega = vector of frequency samples
end