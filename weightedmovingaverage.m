function wmo=weightedmovingaverage(data,n)
  w=[0.1 0.2 0.4 0.2 0.1]; #ftiaxnoume to pinaka me ta standard varh gia n=5
  z=idivide(n,int32(2),'fix'); #nmod2
  for j=1:length(data) 
    y=0;
    i=1;# counter gia ton pinaka w
    for k=-z:1:z    #-nmod2 ews nmod2
      if(j+k>0 && j+k<=length(data)) #elegxos....
      y=y+w(i)*data(j+k); #antistoixos tupos apo thewria
      i=i+1;
    endif
  endfor
  wmo(j)=y  #weightedmovingaverage kathe stoixiou j
endfor
