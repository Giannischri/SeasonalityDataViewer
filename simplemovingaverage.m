function kmo=simplemovingaverage(data,n)
  if(mod(n,2)==1) #an n einai peritos
  
  z=idivide(n,int32(2),'fix');  %nmod2
  for j=1:length(data) # gia kathe dedomeno
    y=0;
    for k=-z:1:z    # apo -nmod2 ews nmod2(symsum den douleue afou to index den ginete na einai symbol  
      if((j+k)>0 && j+k<length(data)) # an uparxei to j+k ?? index ston pinaka
      y=y+data(j+k);   #prosthetei kathe stoixeio mazi
    endif
  endfor
  kmo(j)=1/n*y; #diairei me to n kai paragete o ekastos kmo kathe dedomenou j
endfor
else #se periptwsh n artios tote ginete automata me movmean
kmo=movmean(data,n);
end
%plot(kmo),xticks(0:length(data))


      
         
  
  
 
  
   
    
      
  
