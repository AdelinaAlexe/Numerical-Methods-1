function retval = sample_n_words (text,  widx, kscvidx, k, stoch, word_set, n)
  % Sample word using sample_next_word from the last k elements of text (k-seq), ad it to the end of text
  % repeat n times
  % This function is not tested by the checker, it can be tested as a binus by running `run tema1_script.m`
  text = char(text);

  for i = 1:n
    % calculeaza probabilitatile pentru urmatorul cuvant
    probs = sample_next_word(text, widx, kscvidx, k, stoch);
    % calculeaza sumele cumulate ale probabilitatilor
    cum_probs = cumsum(probs);
    % genereaza un numar aleatoriu
    random = rand() * cum_probs(end);
    index = find(cum_probs >= random, 1);
    % obtine cuvantul din setul de cuvinte
    next_word = word_set{index};
    % adauga cuvantul la finalul textului
    text = [text, next_word];
  endfor

  retval = text;
endfunction
