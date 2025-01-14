function retval = k_secv_idx (distinct_k_sec)
  % return disctionary containing the indices of each elem from distinct_k_sec
  % HINT: containers.Map
  % Try not to set the key-value pairs iteratively, use containers.Map(keys, values) whenever possible
  n = numel(distinct_k_sec);
  index = 1:n
  retval = containers.Map(distinct_k_sec, index);
endfunction
