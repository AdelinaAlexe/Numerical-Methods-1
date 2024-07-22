TEMA1 - METODE NUMERICE

In rezolvarea temei am implementat functiile astfel:

Taskul 1:

"estimate_gaussian"
Functia primeste ca parametru matricea de date X si calculeaza media
caracteristicilor pentru fiecare observatie.
Pentru matricea de variante se calculeaza produsul scalar intre 2 diferente
ale unor observatii si medie si se imparte la numarul total de observatii.

"check_predictions"
Functia primeste ca parametru 2 vectori, unul de predictii si unul de 
informatii reale
referitor la date si calculeaza:
false_pozitives: Numarul de observatii gresit identificate ca fiind
pozitive (outliers), dar care sunt negative în realitate.
false_negatives: Numarul de observatii pozitive (outliers) care sunt
identificate gresit ca fiind negative.
true_pozitives: Numarul de observatii pozitive (outliers) identificate corect.

"gaussian_distribution"
Functia primeste ca argumente matricea de date X, vectorul de medii si matricea
de variante. Pentru
fiecare observatie din X calculeaza probabilitatea folosind distributia 
gaussiana.
Probabilitatea este calculata conform formulei standard.

"multivariate_gaussian"
Functia primeste ca argumente matricea de date X, vectorul de medii si 
matricea de variante. Pentru
fiecare observatie din X calculeaza probabilitatea folosind distributia 
gaussiana multivariata.
Probabilitatea este calculata conform formulei standard a distributiei 
gaussiene multivariate.

"identify_outliers"
Functia primeste matricea de date X și vectorul de etichete reale yval.
Estimeaza parametrii unei distributii gaussiane pentru datele din X folosind
functia estimate_gaussian.
Calculeaza probabilitatile pentru fiecare observatie din X folosind functia 
multivariate_gaussian.
Determina un prag optim pentru clasificarea observatiilor ca outlieri folosind
functia optimal_threshold.
Identifica outlierii în functie de probabilitatile calculate si pragul optim.

"optimal_threshold"
Functia primeste vectorul de etichete reale truths și vectorul de probabilitati
probabilities.
Genereaza o serie de valori de prag intre minimul si maximul probabilitatilor.
Pentru fiecare valoare de prag, calculeaza precizia, recuperarea si F1-score-ul
utilizand functia check_predictions.
Selecteaza pragul care maximizeaza F1-score-ul si returneaza pragul optim si
metricile asociate.


Taskul 2:

"build_kernel"
Functia primeste matricea de date de intrare X, functia de kernel f si
parametrul f_param.
Parcurge fiecare pereche de observatii și calculeaza valoarea kernelului
folosind functia de kernel specificata.

"cholesky"
Functia realizeaza descompunerea cholesky pentru matricea primita ca argument.

"conjugate_gradient"
Functia primeste matricea coeficientilor A, vectorul termenilor liberi b,
aproximarea initials a solutiei x0, toleranta tol si numarul maxim de iteratii
max_iter.
Initializeaza vectorul de reziduuri r, vectorul de directii conjugate v si
aproximarea solutiei x.
Calculeaza toleranta la patrat pentru a utiliza criteriul de oprire.
Intr-un ciclu while, executa iteratii ale algoritmului pana cand se atinge
toleranta sau numarul maxim de iteratii.
In fiecare iteratie, calculeaza pasul optim tk, actualizeaza aproximarea
solutiei x, actualizeaza reziduul r si directia conjugata v.

"eval_value"
Functia primeste un vector de intrare x si matricea de date de antrenare X,
impreuna cu functia de kernel f, parametrul functiei de kernel f_param si
vectorul coloana a rezultat din antrenarea modelului.
Pentru fiecare linie din matricea de antrenare X, se calculeaza valoarea
functiei de kernel aplicata intre x si randul respectiv al lui X.
Se insumează rezultatele obtinute prin inmultirea valorilor functiei de
kernel cu vectorul coloana a, obținand astfel predictia finala.

"gaussian_kernel"
Functia primeste doua esantioane x și y, impreuna cu parametrul sigma care
controleaza latimea gaussienei.
Se calculeaza norma patrată a diferentei dintre cele doua esantioane.
Apoi, valoarea functiei de kernel gaussiane este calculata utilizand formula
specifica.

"get_lower_inverse"
Functia primeste o matrice inferior triangulara L.
Se initializeaza matricea inversa P cu o matrice identitate de aceeasi
dimensiune cu L.
Se parcurge fiecare coloana a matricei L si se aplica algoritmul pentru a
determina inversa.
In fiecare iteratie, se extrage elementul pivot din diagonala principala si
se normalizeaza randul corespunzator atat în matricea L, cat si in matricea P.
Pentru fiecare element sub pivot, se normalizeaza randul corespunzator din
ambele matrici prin scaderea unei anumite proportii din randul pivot.
Procesul continua pana cand toate coloanele matricei L sunt parcurse.

"get_prediction_params_iterative"
Functia primeste matricea kernel K, vectorul coloana y si parametrul de
regularizare lambda.
Se formeaza matricea R prin adaugarea produsului dintre lambda si matricea
identitate la matricea K.
Algoritmul de gradient conjugat este apoi aplicat matricei R, vectorului
coloana y.

"get_prediction_params"
Functia primeste matricea kernel K, vectorul coloana y si parametrul de
regularizare lambda.
Se formeaza matricea R prin adaugarea produsului dintre lambda si matricea
identitate la matricea K.
Se aplica factorizarea Cholesky asupra matricei R, rezultand o matrice inferior
triunghiulară L.
Se initializează vectorii a si z cu zero-uri.
Se calculeaza vectorul z utilizand substitutia inainte.
Se calculeaza vectorul a utilizand substitutia inapoi.
Rezultatul este vectorul coloana a care aproximeaza solutia.

"linear_kernel"
Functia primeste doi vectori x si y si un parametru suplimentar care este
ignorat în implementare.
Daca dimensiunile vectorilor x si y sunt inverse (adica x este un vector
coloană si y este un vector linie sau invers), acestea sunt transpuse pentru
a se asigura ca se calculeaza corect produsul scalar.
Se calculeaza produsul scalar dintre cei doi vectori.

"polynomial_kernel"
Functia primeste doi vectori x și y, si gradul polinomului d.
Daca x este un vector coloană și y este un vector linie sau invers, acestia
sunt transpusi pentru a se asigura ca se calculeaza corect produsul scalar.
Se calculeaza produsul scalar dintre cei doi vectori si se ridica la puterea d.


Taskul 3:

"distinct_cell_array"
Functia utilizeaza functia unique pentru a gasi elementele distincte din
tabloul de celule.

"distinct_words"
Functia utilizeaza functia unique pentru a gasi tokenurile distincte.

"k_secv_idx"
Functia utilizeaza obiectul containers.Map pentru a crea un dictionar.
Elementele distincte din distinct_k_sec sunt utilizate drept chei, iar
indicii corespunzatori sunt valorile asociate.
Astfel, functia returneaza un dictionar care permite accesul rapid la
indicii fiecarui element distinct din tabloul de k-secvente.

"k_secv"
Functia parcurge tabloul de intrare si construieste k-secvente prin
concatenarea a k elemente consecutive.
Utilizeaza functia strjoin pentru a concatena elementele din secvente
folosind un spatiu ca separator.
Returneaza o celula care contine toate k-secventele rezultate.

"sample_n_words"
Functia parcurge textul si, pentru fiecare cuvant, calculeaza probabilitatile
pentru urmatorul cuvant folosind functia sample_next_word.
Apoi, calculeaza sumele cumulate ale acestor probabilitati si generează un numar
aleatoriu pentru a selecta un cuvant.
Alege cuvantul corespunzator din setul de cuvinte si-l adauga la sfarsitul
textului.
Acesti pasi sunt repetati de n ori pentru a adauga n cuvinte la text.

"sample_next_word"
Functia extrage ultima secventa k din text si determina indexul corespunzator
in matricea stocastica a cuvintelor.
Apoi, obtine linia corespunzatoare din matricea stocastica si calculeaza
probabilitatile pentru urmatorul cuvant.
Probabilitatile pot fi scalate sau nescalate, in functie de valoarea din
matricea stocastica.

"stochastic_matrix"
Functia primeste o lista de secvente de lungime k, cuvinte si seturi distincte
de cuvinte si secvente.
Se construieste matricea stocastica, unde fiecare intrare reprezinta numarul
de aparitii ale unui cuvant într-o secventă de lungime k.
Matricea nu este scalata, ci contine doar numere intregi.