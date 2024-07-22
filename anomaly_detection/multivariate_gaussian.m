% Computes the probability density function of the multivariate gaussian distribution.
function probabilities = multivariate_gaussian(X, mean_values, variances)
    [n m] = size(X); % am aflat dimensiunile matricii X
    detE = det(variances); % am calculat determinantul matricii de varianta
    a = 1 / (sqrt((2 * pi) ^ m) * sqrt(detE)); % am calculat factorul de scalare
            % pentru formula distributiei gaussiene multivariate
    inv_variances = inv(variances); % am aflat inversa matricii de varianta

    probabilities = zeros(n, 1); % am initializat vectorul de probabilitati
    for i = 1:n
      aux = X(i,:) - mean_values; % pentru fiecare observatie, calculez
            % diferenta fata de media caracteristicilor
      probabilities(i) = exp(-0.5 * aux * inv_variances * aux'); % aplic formula
                        % pentru fiecare element din vectorul de probabilitati
    endfor

    probabilities = probabilities * a; % scalez vectorul
endfunction
