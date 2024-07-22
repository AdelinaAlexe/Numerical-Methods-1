function retval = polynomial_kernel (x, y, d)
  # TO DO: implement polynomial kernel function
  if (size(x, 1) == 1 && size(y, 1) == 1)
    x = x';
    y = y';
  endif
  retval = (1 + y' * x) ^ d;
endfunction
