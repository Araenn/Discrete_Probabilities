N = input("Choose the number of points to plot : ");

X = rand(N, 1); %tableau de N valeurs a afficher, entre 0 et 1
a = input("Choose a : ");
b = input("Choose b : ");
Y = VACU_ab(N, a, b);

stem(X) %mieux visualiser les points
hold on
plot(Y)
grid()
title("500 points de X")
ylabel("values from 0 to 1")
xlabel("500 points")
legend("X", "Y")