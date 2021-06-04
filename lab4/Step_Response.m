clear;
clc;

%1os tropos

n=0:100;
s=zeros(1,length(n));
u=inline('n>=0');
s(2)=1;
for i=3:length(n)
  s(i)=0.3*u(n(i))+0.6*u(n(i)-1)+0.3*u(n(i)-2)-0.9*s(i-2);
end;
stem(n,s);
title("Step Response");
xlabel("X Axis");
ylabel("Y Axis");


%2os tropos
figure(2);
n=0:100;
u=inline('n>=0');
a=[1 0 0.9];
b=[0.3 0.6 0.3];
y=filter(b,a,u(n));
stem(n,y,"r");
title("Step Response(with filter)");
xlabel("X Axis");
ylabel("Y Axis");