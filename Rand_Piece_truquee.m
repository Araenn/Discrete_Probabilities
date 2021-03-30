function X = Rand_Piece_truquee(N)
  U = rand(N, 1); 
  p = 0.3;
  for i = 1:N
    if U(i) <= p
      X(i) = 1;
    else 
      X(i) = 0;
    end
  end
end