function probs = sample_next_word (text, words_idx, k_secv_idx, k, stoch)
  % return scaled or unscaled probabilities (line of the stochastic matrix) corresponding to the last k-squence of text
  text = char(text);

  % extrage ultima k-secventa
  last_k_secv = text((end - k + 1):end);

  % obtine indexul corespunzator secventei k din matrice
  index = k_secv_idx(last_k_secv);

  % obtine linia corespunzatoare din matricea stocastica
  row = stoch(index, :);

  % calculeaza probabilitatile
  probs = row / sum(row);
  endfunction
