function retval = secantes_func (x0, x1, f)
   stop_error = 1e-8;
  x2 = x0 - ( f(x0) / ( ( f(x1)-f(x0) )/(x1-x0) ) );
  err = abs(x2-x1)/abs(x2);
  while(err > stop_error)
    x0 = x1;
    x1 = x2;
    x2 = x0 - ( f(x0) / ( ( f(x1)-f(x0) )/(x1-x0) ) );
    err = abs(x2-x1)/abs(x2);
  end
  retval = x2; 
endfunction