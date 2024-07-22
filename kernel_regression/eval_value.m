function pred = eval_value(x, X, f, f_param, a)
   # TO DO: pentru un vector de input x, preziceti valoarea acestuia in
   # in functie de toti vectorii de input folositi pentru a antrena modelul
   # folosind functia de kernel f care are ca al 3-lea parametru f_param
   # si vectorul coloana a
   n = size(X, 1);
   values = zeros(n, 1);

   % aplica functia pe fiecare exemplu de antrenare
   for i = 1:n
     values(i) = f(x, X(i,:), f_param);
   endfor

   % calculeaza predictia
   pred = sum(values .* a);
endfunction
