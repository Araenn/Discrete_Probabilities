function Y = VACU_ab(N, a, b)
    X = rand(N, 1); %tab of N values to show, between 0 and 1
    Y = a + (b - a) .* X;
end
