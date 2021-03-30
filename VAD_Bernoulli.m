function X = VAD_Bernoulli(N, p)
  U = rand(N, 1); 
  for i = 1:N
    if U(i) <= p
      X(i) = 1;
    else 
      X(i) = 0;
    end
  end
end