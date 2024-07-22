% Finds the best threshold to use for selecting outliers.
function [best_epsilon best_F1 associated_precision associated_recall] = optimal_threshold(truths, probabilities)
    best_epsilon = 0;
    best_F1 = 0;
    associated_precision = 0;
    associated_recall = 0;

    % setez pasul cu care parcurg toate probabilitatile
    % am fixat numarul de probabilitati parcurse la 1000
    step = (max(probabilities) - min(probabilities)) / 1000;
    epsilons = min(probabilities):step:max(probabilities); % generez o serie de
              % valori epsilon intre minimul si maximul probabilitatilor cu un
              % pas setat anterior

    for epsilon =  epsilons % parcurg seria de epsilon posibili
      outl = probabilities < epsilon; % verific daca elementele din vectorul de
             % probabilitati sunt mai mici decat epsilon
             % ceea ce va genera un nou vector de valori boolene

      [false_positives false_negatives true_positives] = check_predictions(outl, truths);

      % am aplicat formula pentru parametrii si am calculat:
      precision = true_positives / (true_positives + false_positives); % procentajul
                % de observatii corect identificate ca fiind outliers din totalul
                % observatiilor
      recall = true_positives / (true_positives + false_negatives);% procentajul
                % de observatii corect identificate ca fiind outliers din totalul
                % outlierilor reali
      F1 = (2 * precision * recall) / (precision + recall); % parametrul de estimare

      % setez noile valori
      if F1 > best_F1
        best_F1 = F1;
        best_epsilon = epsilon;
        associated_precision = precision;
        associated_recall = recall;
      endif
    endfor
endfunction
