clear;
clc;

% x(t) = 6-2cos(600πt) + 6cos(1200πt) + 6cos(1500πt) - 0.5cos(6000πt)

% Erwtima 1:
%______________________________________________________________________

%T0=σταθερα
%T1=300;
%T2=600;
%T3=750;
%T4=3000;


% Erwtima 2:
%______________________________________________________________________

Ts=1/150;
t=0:1/50000:2*Ts;
x = 6-2*cos(600*pi*t) + 6*cos(1200*pi*t) + 6*cos(1500*pi*t) - 0.5*cos(600*pi*t)
figure(1);
plot(x, cos(x))
grid
title("Analog")
xlabel("X Axis")
ylabel("Y Axis");

figure(3)
subplot(2, 1, 1);
plot(x, cos(x))


% Erwtima 3:
%______________________________________________________________________

Fs= 4000;
Ts=1/Fs;
t=0:Ts:100*Ts;
x = 6-2*cos(600*pi*t) + 6*cos(1200*pi*t) + 6*cos(1500*pi*t) - 0.5*cos(600*pi*t)
figure(2)
plot(t, x, '0-');
title("FNyquist")


figure(3)
subplot(2, 1, 2);
plot(t, x, 'r');
