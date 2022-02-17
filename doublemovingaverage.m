function dkmo=doublemovingaverage(data,p,n)
  z=idivide(n,int32(2),'fix'); # nmod 2
  
  kmo=simplemovingaverage(data,n); # pernei kmo
  for j=1:length(data) # gia kathe stoixeio sta dedomena
    y=0; 
    for k=-z:z # apo -nmod2 ews nmod2
      if(j-k>=1 && j-k<=length(data)) #elegxos an uparxei index
      y=y+kmo(j-k); #prosthetei kmo mazi opws orizei o tupos tou diplou mo
    endif
  endfor
  dkmo(j)=1/p*y; #diairei me p kai paragete dkmo gia kathe stoixeio j dedomenwn
endfor


