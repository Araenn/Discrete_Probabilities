function X = Rand_Piece(N)
    U = rand(N, 1);
    X = U >= 0.5;
end