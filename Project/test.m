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
