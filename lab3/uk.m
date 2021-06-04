function [ n,u ] = uk(k, minN, maxN)
  n=[minN:maxN];
  u=zeros(1,length(n));
  for i=1:length(n)
    if n(i)>=k
      u(i)=1;
      endif
  endfor
endfunction