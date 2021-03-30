function X = Rand_Coin(N)
    U = rand(N, 1); 
    X = U >= 0.5; %if it is greater than 0.5, then T = 1. Allows you to sort the values between 0 or 1.
end
