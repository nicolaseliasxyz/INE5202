function retval = bipart_func (a, b, f)
  x = (a+b)/2;
  while abs(f(x)) > 1e-8
    if f(a)*f(x) < 0
      b = x;
    else
      a = x;
    end
    x = (a+b)/2;
 end
  retval = x;
endfunction