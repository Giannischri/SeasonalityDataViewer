function decomp(T)
   n=13;
  kmo=movmean(T,n);
  

  for i=1:length(kmo)
    sr(i)=T(i)/kmo(i);
   endfor
   
   for j=1:12
     c=0;
     pointers(j)=0;
   for i=j:12:length(kmo)
     pointers(j)=pointers(j)+kmo(i);
     c=c+1;
   endfor
      pointers(j)=pointers(j)/c;
   endfor
   
   


for i=1:length(T)
  z=mod(i,12);
  if(z==0)
  tcr(i)=T(i)/pointers(12);
  elseif(z!=0)
  tcr(i)=T(i)/pointers(z);
end
endfor 
dkmo=doublemovingaverage(tcr,3,3);
for i=1:length(tcr)
 r(i)=tcr(i)/dkmo(i);
endfor
syms k;
tcombo=0;
tcup=0;
n=13;
for i=1:n
  tcup=tcup+i;
endfor
  tcup=tcup/n;
tccup=(sum(kmo(1:n)))/n;
for i=1:n
  tcombo=tcombo+i*kmo(i);
endfor
b=(tcombo/n-tcup*tccup)/((double(symsum(k^2,k,1,n)))/n-tcup^2);
a=tccup-b*tcup;
for i=1:length(T)
  tas(i)=a+b*i;
  c(i)=kmo(i)/tas(i);
endfor
#tas
#plot(pointers)
plot(tas),xticks(0:59)
#tas60=a+b*60
#F60=tas60*c(59)*pointers(12);
#T
#F60


  


 
  