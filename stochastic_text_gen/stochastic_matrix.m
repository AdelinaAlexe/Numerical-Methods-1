function retval = stochastic_matrix(k_secv_corpus, corpus_words, words_set, k_secv_set, k)
    % build the stochastic matrix. Bonus if it is sparse
    % The 'stochastic' matrix SHOULD NOT be scaled (divided by sum of all)
    % It should just be entry-wise
    % This is how the checker tests it, to not have to deal with floating point errors

    % obtine indexul cuvintelor si al secventelor de lungime k
    widx = word_idx(words_set);
    kidx = k_secv_idx(k_secv_set);

    % numarul de cuvinte si secvente de lungime k
    wn = numel(widx.keys);
    kn = numel(kidx.keys);

    %retval = zeros(kn, wn);
    retval = sparse(kn, wn);

    nr_w = numel(corpus_words);

    for i = 1:(nr_w - k)
      % extrage cuvantul de la pozitia j
      w = corpus_words{i + k};

      % extrage secventa de lungime k corespunzatoare
      secv = k_secv_corpus{i};

      % obtine indexul cuvantului si al secventei din seturi
      index_w = widx(w);
      index_s = kidx(secv);

      % incrementeaza numarul de aparitii in matricea stocastica
      retval(index_s,index_w) = retval(index_s,index_w) + 1;
    endfor
end
