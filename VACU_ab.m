function Y = VACU_ab(N, a, b)
    X = rand(N, 1); %tableau de N valeurs a afficher, entre 0 et 1
    Y = a + (b - a) .* X;
end