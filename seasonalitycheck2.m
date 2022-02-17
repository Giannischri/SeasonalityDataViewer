function seasonalitycheck2(T,n,pos,tcritical)
  sum=0;
  for i=2:1:pos-1
    acf=seasonalitycheck(T,n,i);
    sum=sum+acf^2;
  endfor
  limit=tcritical*((1+2*(seasonalitycheck(T,n,1)+sum))/n)^1/2
  limit
  seasonalitycheck(T,n,pos)
  if(abs(seasonalitycheck(T,n,pos))>limit)
  display("all good its seasonal")
  endif