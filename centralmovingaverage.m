function ddkmo=centralmovingaverage(data,n) 
  # z=idivide(n,int32(2),'fix');
  #max=z-1;
  #min=-z;
  # y=0;
  #for j=1:p
  #for k=min:max
  # y=y+1/n*data(i+k); 
  #endfor
  # max=max+1;
  # min=min+1;
  #endfor
  # ddkmo=1/p*y
  
  kmo=movmean(data,n);  #mporei kai simplemovingaverage alla afou gnwrizoume oti einai artios to kanw kateutheian
  for i=1:length(data) # gia kathe dedomeno
    if(i+1<=length(data))
    
    ddkmo(i)=1/2*(kmo(i)+kmo(i+1)) # mesos oros  kmo kai epomenou kmo paragei ddkmo gia kathe stoixeio i dedomenwn 
  endif
endfor


