function retval = linear_kernel (x, y, other)
  # TO DO: implement linear kernel function
  # Ignorati parametrul other pentru aceasta functie
  if (size(x, 1) == 1 && size(y, 1) == 1)
    x = x';
    y = y';
  endif
  retval = y' * x;
endfunction
