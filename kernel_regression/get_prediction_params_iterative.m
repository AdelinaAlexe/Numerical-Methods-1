function [a] = get_prediction_params_iterative (K, y, lambda)
  # TO DO: folosind metode iterative, implementati logica
  # pentru a obtine vectorul coloana a, asa cum este descris in enuntul temei

  n = size(K, 1);
  R = K + lambda * eye(n);
  a = conjugate_gradient(R, y, zeros(n, 1), 0.0000001, 1000);
endfunction
