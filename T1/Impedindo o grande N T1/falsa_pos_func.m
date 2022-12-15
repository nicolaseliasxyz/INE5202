function retval = falsa_pos_func (a, b, f)
    x = a - f(a)*(b-a)/(f(b) - f(a));
  while (abs(f(x)) > 1e-8)
    if f(a)*f(x) <= 0
      b = x;
    else
      a = x;
    end
    x = a - f(a)*(b-a)/(f(b) - f(a));
  end
  retval = x;
endfunction