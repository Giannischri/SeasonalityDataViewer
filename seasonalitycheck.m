function acf=seasonalitycheck(T,n,k)
  acf1=0;
 acf2=0;
  for i=1+k:n
    if(i-k>=1)
    acf1=acf1+(T(i)-mean(T))*(T(i-k)-mean(T));
    endif
  endfor
  for i=1:n
    acf2=acf2+(T(i)-mean(T))^2;
  endfor
  acf=acf1/acf2;
