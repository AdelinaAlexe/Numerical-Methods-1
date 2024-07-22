function probability = gaussian_distribution(X, mean_value, variance)
     [n m] = size(X); % afla dimensiunile matricii X
     detE = det(variance);
     a = 1 / (sqrt((2 * pi) ^ m) * sqrt(detE));
     inv_variance = inv(variance); % inverseaza matricea de varianta

     probability = zeros(n, 1); % initializeaza vectorul de probabilitati
     for i = 1:n
       % calculeaza probabilitatea pentru fiecare element in parte
       aux = X(i,:) - mean_value;
      probability(i) = exp(-0.5 * aux * inv_variance * aux');
     endfor
     probability = probability * a;
endfunction
