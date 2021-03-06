N = input("Choose the number of points : ");
a = input("Choose the born a : "); %0
b = input("Choose the born b : "); %2
Nc = 40; %number of classes

X = VACU_ab(N, a, b);


subplot(3,1,1)
plot(X)
grid()
title("X")

subplot(3,1,2)
hist(X, Nc)
hold on
[Cpt, m] = hist(X, Nc); %m = middle, Cpt = counting => trend curve || as N rise up, the curve tend t 1
plot(m, Cpt, 'r')
grid()
title("Histogram of X")
xlabel("Nc")
legend("X", "Cpt, m")

subplot(3,1,3)
P = Cpt/N * Nc * 1/(max(X)-min(X)); % *Nc to raise hist, Cpt/(max(X)-min(X)) to adapt to each interval || Pk = Cpt/N
bar(m, P, 1) %normalized histogram
hold on
plot(m, (1/(b-a)) * ones(Nc, 1), 'linewidth', 2) %DDP
grid()
title("Normalized histogram of X")
legend("Normalized hist of X", "DDP of X")
