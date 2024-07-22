function [false_pozitives, false_negatives, true_pozitives] = check_predictions(predictions, truths)
    false_pozitives = 0;
    false_negatives = 0;
    true_pozitives = 0;

    false_pozitives = sum(predictions & ~truths); % numarul de observatii gresit
                     % identificate ca fiind outliers;
    false_negatives = sum(~predictions & truths); % numarul de observatii care sunt
                     % outliers, dar nu au fost identificate ca atare
    true_pozitives = sum(predictions & truths); % numarul de observatii corect
                     % identificate ca fiind outliers;
endfunction
