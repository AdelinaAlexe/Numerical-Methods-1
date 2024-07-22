function [L] = cholesky (A)
    # TO DO: realizati descompunerea cholesky pentru o matrice
    # positiv definita

    [n n] = size(A);
    L = zeros(n);

    % parcurge fiecare element din matricea L
    for i = 1:n
      for j = 1:i
        s = 0;

        for k=1:(j-1)
          s = s + L(i,k) * L(j,k);
        endfor

        % calculeaza elementul L(i, j)
        if i == j
          L(i, j) = sqrt(A(i, i) - s);

        else
          L(i, j) = (A(i, j) - s) / L(j ,j);
        endif
      endfor
    endfor
endfunction
