function B = k_secv (A, k)
  % given an array [a b a b c] and k=2
  % should return [ab ba ab bc]
  % HINT: use strjoin
  n = numel(A);
  B = {};

  for i = 1:(n - 1 - k + 1)
    B{i} = strjoin(A(i:(i + k - 1)), ' ');
  endfor
  B = B';
endfunction
