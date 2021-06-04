clear;
clc;

x=[0:pi/90:4*pi];          
figure(1);                  
plot(x, cos(x))             
grid                        
title("Cos")
xlabel("X Axis")
ylabel("Y Axis");

k=[-2*pi:pi/90:2*pi];
figure(2);
plot(k, sin(k))
grid
title("Sin")
xlabel("X Axis")
ylabel("Y Axis");

t=[-pi:pi];
m=cos(t);
q=sin(t);

figure(3);
plot(t,m,t,q,"r")
grid
title("Same Figure plot")
xlabel("X Axis")
ylabel("Y Axis");

figure(4);
subplot(2,1,1);             
plot(t,m)
title("Same figure Subplot")
grid
ylabel("cos(t)");
subplot(2,1,2);
plot(t,q,"g")
grid
ylabel("sin(t)");
