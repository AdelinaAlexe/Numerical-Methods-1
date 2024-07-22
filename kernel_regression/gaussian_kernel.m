function retval = gaussian_kernel (x, y, sigma)
  # TO DO: implement gaussian kernel function
  norma = sum((x - y).^2);
  retval = exp(- norma / (2 * sigma^2));
endfunction
