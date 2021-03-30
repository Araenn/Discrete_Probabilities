N = input("Choose the number of points to plot : "); %I choose 500 points

X = rand(N, 1); %tab of N values to show, between 0 and 1
a = input("Choose a : ");
b = input("Choose b : ");
Y = VACU_ab(N, a, b);

stem(X) %allows for better visualization of the points
hold on
plot(Y)
grid()
title("500 points de X") 
ylabel("values from 0 to 1")
xlabel("500 points")
legend("X", "Y")
