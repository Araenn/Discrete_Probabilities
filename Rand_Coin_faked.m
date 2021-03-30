function X = Rand_Coin_faked(N)
  U = rand(N, 1); 
  p = 0.3; %probability to get heads or tails (not 0.5/0.5)
  for i = 1:N
    if U(i) <= p
      X(i) = 1;
    else 
      X(i) = 0;
    end
  end
end
