clear;  
clc;

% Kroutsiki Apokrousi
%____________________________________________________________
% 1os tropos (kanonikos)

figure(1)
n=0:100;
h=zeros(1,length(n));  %pinakas midenikwn apo to 1 ews to mikos tou n. To h prosdiorizei tin kroustiki apokrisi kai to d to d(n)
d=inline('n==0');       %prosorini ulopoihsh
h(1)=0.32;
h(2)=0.68;
for i=3:length(n)
  h(i)=0.32*d(n(i))+0.68*d(n(i)-1)+0.4*d(n(i)-2)-0.6*h(i-2);
end;
stem(n,h)
title("Impulse Response")
xlabel("X Axis")
ylabel("Y Axis");


% 2os tropos (me filter)
figure(2)
n=0:100;
d=inline('n==0');
a=[1 0 0.6];
b=[0.32 0.68 0.4];
y=filter(b,a,d(n));
stem(n,y,"r")
title("Impulse Response(with filter)")
xlabel("X Axis")
ylabel("Y Axis");

%Tha parw timi isi me 1 mono otan to d vrisketai sti xroniki stigmi 0 (diladi d(0) = 1)

% Bimatiki Apokrousi
%____________________________________________________________
% 1os tropos


figure(3);
n=0:100;
s=zeros(1,length(n));
u=inline('n>=0');
s(1)=0.32;
s(2)=1;
for i=3:length(n)
  s(i)=0.32*u(n(i))+0.68*u(n(i)-1)+0.4*u(n(i)-2)-0.6*s(i-2);
end;
stem(n,s)
title("Step Response")
xlabel("X Axis")
ylabel("Y Axis");

figure(4);
n=0:100;
u=inline('n>=0');
a=[1 0 0.6];
b=[0.32 0.68 0.4];
y=filter(b,a,u(n));
stem(n,y,"g")
title("Step Response(with filter)")
xlabel("X Axis")
ylabel("Y Axis");

%se kathe periptosi, an to n einai mikrotero tou 0 tote to s(n) alla kai to u(n) tha einai isa me 0, enw se kathe alli periptwsi kai ta duo tha paroun tin timi 1