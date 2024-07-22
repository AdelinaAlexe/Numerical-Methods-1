function [x] = conjugate_gradient (A, b, x0, tol, max_iter)
  # Implementati algoritmul pentru metoda gradientului conjugat

  r = b - A * x0;
  v = r;
  x = x0;
  tol_sq = tol ^ 2;
  k = 1;

  while k <= max_iter && r' * r > tol_sq
    tk = (r' * r) / (v' * A * v); % calculeaza pasul optim
    x = x + tk * v; % calculeaza aproximarea solutiei
    r_prev = r;
    r = r - tk * A * v;
    sk = (r' * r) / (r_prev' * r_prev); % calculeaza coeficientul de scalare
    v = r + sk * v;
    k = k + 1;
  endwhile
endfunction
