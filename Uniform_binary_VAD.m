N = input("Choose the number of points : "); %10
a = input("Choose the born a : "); %0
b = input("Choose the born b : "); %2

X = Rand_Piece(N);

subplot(3,1,1)
stairs(X, 'linewidth', 2)
grid()
title("X")

subplot(3,1,2)
hist(X, 0:1)
hold on
[Cpt, m] = hist(X, 0:1);
plot(m, Cpt, 'r', 'linewidth', 2)
title("Histogram of X")
grid()
legend("X", "Cpt, m")

subplot(3,1,3)
P = Cpt/N; 
bar(m, P, 0.1) %normalized histogram 
hold on
LDP = [0.5;0.5]; %probability law
stem(m, LDP)
grid()
title("Normalized histogram of X")
legend("Normalized hist of X", "LDP of X")
