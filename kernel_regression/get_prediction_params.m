function [a] = get_prediction_params (K, y, lambda)
  # TO DO: folosind metode neiterative, implementati logica
  # pentru a obtine vectorul coloana a, asa cum este descris in enuntul temei

  n = size(K, 1);
  % adauga lambda pe diagonala principala a matricii R
  R = K + lambda * eye(n);
  % aplica factorizarea cholesky
  L = chol(R, 'lower');
  a = zeros(n, 1);
  z = zeros(n ,1);

  for i = 1:n
     % calculeaza z(i) utilizand substitutia inainte
    z(i) = (y(i) - L(i, 1:(i - 1)) * z(1:(i - 1)))/ L(i, i);
  endfor

  for i = n:-1:1
    % calculeaza a(i) utilizand substitutia inapoi
    a(i) = (z(i) - L'(i, (i + 1):n) * a((i + 1):n)) / L'(i, i);
  endfor
endfunction
