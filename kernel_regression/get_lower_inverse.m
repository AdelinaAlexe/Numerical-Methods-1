function [P] = get_lower_inverse (L)
  # TO DO: Determinati printr-o metoda matriceala neiterativa inversa
  # unei matrici de tipul lower
    n = size(L, 1);
    P = eye(n);

    % parcurge fiecare coloana a matricii
    for j = 1:n
      pivot = L(j, j); % extrage elementul pivot

      % normalizeaza linia j a matricelor L si P
      L(j, :) = L(j, :) / pivot;
      P(j, :) = P(j, :) / pivot;

      for i = (j + 1):n
        zero = L(i, j); % extrage elementul de sub pivot

        % normalizeaza linia i in ambele matrici
        L(i, :) = L(i, :) - zero * L(j, :);
        P(i, :) = P(i, :) - zero * P(j, :);
      endfor
    endfor
endfunction
