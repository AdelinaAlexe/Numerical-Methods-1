% This function estimates the parameters of a Gaussian distribution using the data in X.
function [mean_values variances] = estimate_gaussian(X)
    [n m] = size(X); % obtine dimensiunile matricei X
    mean_values = zeros(1, m); % initializeaza vectorul de medii
    variances = zeros(m, m); % initializeaza matricea de varianta

    for i = 1:m
      mean_values(i) = mean(X(:,i)); % calculeaza media pentru fiecare observatie
    endfor

    for i = 1:m
      for j = 1:m
        % calculeaza diferenta dintre o anumita observatie si medie
        aux = X(:,i) - mean_values(i);
        aux2 = X(:,j) - mean_values(j);
        variances(i ,j) = (aux' * aux2) / n; % aplica formula pentru 2 observatii
                                      % diferite si adauga in maricea de varianta
      endfor
    endfor
endfunction
