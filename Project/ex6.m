b=[0 0.5 0];                        %numerator
a=[1 -1.7*cos(pi/16) 0.6];       		%denominator
[z, p, c] = tf2zp(b, a);	    			%z transform
zplane(z, p);		   			            %z transform

b=[4 0 -2];
a=[1 0 -1];
[r,p,k]=residuez(b,a)

