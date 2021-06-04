clear;
clc;


n=[-2,-1,0,1,2,3,4,5,6,7];          %pinakas n
x=[-1,0,1,2,4,5,4,-5,-8,-9];        %pinakas x

figure(1);
[y1,n1]=sigshift(x,n,1);            %metatopisi simatos deksia(n-1), y1=neo sima, n1=neos xronos
y1=2*y1;                            %diplassiazetai to sima
[y2,n2]=sigshift(x,n,-4);           %metatopisi simatos 4 fores aristera(n+4), y2 = neo sima, n2 = neos xronos
y2=-3*y2;                           %triplassiazetai arnitika
[y,n]=sigadd(y1,n1,y2,n2);          %prosthetoume ta simata kai tous xronous
plot(n,y)
title("y(n)")
xlabel("X Axis")
ylabel("Y Axis");

n=[-2,-1,0,1,2,3,4,5,6,7];
x=[-1,0,1,2,4,5,4,-5,-8,-9];

figure(2);
[g1,n1]=sigshift(x,n,3);  %metakinw to sima treis theseis deksia kai to antistrefw me tin sigfold 
[g1,n1]=sigfold(g1,n1);
[g2,n2]=sigshift(x,n,2);  %metakinw to sima 2 theseis deksia kai me tin sigmult to pollaplassizw me to x(n)
[g,n]=sigmult(x,n,g2,n2);
[g,n]=sigadd(g1,n1,g,n);    %enwnw e tin sigadd kai bgazw to teliko sima kai ta emfanizw me plot
plot(n,g,"r")
title("g(n)")
xlabel("X Axis")
ylabel("Y Axis");