clear;  
clc;

%y(n) = 0.2x(n) + 0.5x(n-1) + 0.4x(n-5) - 0.1y(n-2) - 0.6y(n-4)

% Erwtima 1:
%______________________________________________________________________
figure(1)
n=0:15;
d=inline('n==0');
a=[1 0.1 0.6];
b=[0.2 0.5 0.4];
y=filter(b,a,d(n));
stem(n,y,"r")
title("Impulse Response(with filter)")
xlabel("X Axis")
ylabel("Y Axis");


% Erwtima 2:
%______________________________________________________________________


x=[-1, 0, 1, 2, 4, 5, 4, -5, -8, -9];
y=conv(x, n);
figure(2);
title ("Response");                         %Den kserw giati den mou emfanizei ton titlo
plot(y);

figure(3);
subplot(2,1,1);
plot(y);

% Erwtima 3:
%______________________________________________________________________

figure(3);
n=0:15;
d=inline('n==0');
a=[1 0.1 0.6];
b=[-1, 0, 1, 2, 4, 5, 4, -5, -8, -9];
y=filter(b,a,d(n));
hold on;
subplot(2,1,2)
stem(n,y,"r")
title({"Impulse Response(with filter)", "Hold On"})         %Oute edw mou emfanizei ton titlo sto 
xlabel("X Axis")                                            %prwto subplot
ylabel("Y Axis");


% Erwtima 4:
%______________________________________________________________________

a=[1 0.1 0.06];
b=[0.50 0.4 0.2];
figure(4)
title("Aπόκριση συχνότητας")                                %Edw den emfaniei kanenan titlo
freqz(b,a)









