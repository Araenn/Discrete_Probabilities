N = input("Choose the number of points : "); %10
a = input("Choose the born a : "); %0
b = input("Choose the born b : "); %2

%question 1
% U = rand(N, 1);
% p = 0.3;
% 
% for i = 1:N
%     if U(i) >= p
%         T(i) = 1;
%     else
%         T(i) = 0;
%     end    
% end
% 
% subplot(2,1,1)
% stem(U)
% grid()
% title("Binary uniform Variable U")
% 
% subplot(2,1,2)
% %stem(T) %sinon points reliés et resultat difficile d'interpretation
% stairs(T, 'linewidth', 2) %lie les points de façon a faire des portes
% grid()
% title("U = 1 or U = 0, creating a pulse function")

%question 5
X = Rand_Piece_truquee(N);
p = 0.3;
Y = VAD_Bernoulli(N, p);

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
P = Cpt/N; % Cpt/(max(X)-min(X)) pour adapter a chaque intervalle || Pk = Cpt/N
bar(m, P, 0.1) %histogramme normalisé
hold on
LDP = [1 - p;p];
stem(m, LDP)
grid()
title("Normalized histogram of X")
legend("Normalized hist of X", "LDP of X")