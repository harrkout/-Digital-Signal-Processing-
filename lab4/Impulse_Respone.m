clear;  
clc;


%1os tropos
figure(1)
n=0:100;
h=zeros(1,length(n));
d=inline('n==0');
h(1)=0.3;
h(2)=0.6;
for i=3:length(n)
  h(i)=0.3*d(n(i))+0.6*d(n(i)-1)+0.3*d(n(i)-2)-0.9*h(i-2);
end;
stem(n,h);
title("Impulse Response");
xlabel("X Axis");
ylabel("Y Axis");

%2os tropos
figure(2)
n=0:100;
d=inline('n==0');
a=[1 0 0.9];
b=[0.3 0.6 0.3];
y=filter(b,a,d(n));
stem(n,y,"r");
title("Impulse Response(with filter)");
xlabel("X Axis");
ylabel("Y Axis");