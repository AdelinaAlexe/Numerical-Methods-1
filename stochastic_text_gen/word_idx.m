function retval = word_idx (distinct_wds)
    % return the word_idx dictionary HINT: containers.Map
    retval = containers.Map('KeyType', 'char', 'ValueType', 'any');
    n = numel(distinct_wds);

    for i = 1:n
      retval(distinct_wds{i}) = i;
    endfor
endfunction
