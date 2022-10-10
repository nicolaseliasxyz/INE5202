function retval = newton_func (x0, f, dxf)
  x = x0 - (f(x0) / dxf(x0));
  err= 1e-8;
  
  while (abs(x-x0) > err)
    x0 = x;
    x = x - (f(x) / dxf(x));
  end
  retval = x;
endfunction