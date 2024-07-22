function [X_train, y_train, X_pred, y_pred] = split_dataset (X, y, percentage)
  # TO DO: împarte setul de date în 2 seturi:
  # un set de training si un set de test,
  # ambele reprezentate printr-o matrice de features un vector de clase
  # percentage este un parametru considerat intre 0 si 1

  # Fiecare linie a matricii X reprezinta x^{(i)} si fiecare element de pe
  # linia coloanei y reprezinta y^{(i)}

  [n m] = size(X);
  num = round(percentage * n);
  X_train = zeros(num, m);
  y_train = zeros(num, 1);
  X_pred = zeros(n - num, m);
  y_pred = zeros(n - num, 1);

  for i = 1:num
    X_train(i, :) = X(i, :);
    y_train(i) = y(i);
  endfor

  for i = (num + 1):n
    X_pred(i - num, :) = X(i, :);
    y_pred(i - num) = y(i);
  endfor
endfunction
