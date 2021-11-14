function X = VAD_Poisson(N,lambda)
    % lambda > 0
    a=exp(-lambda); 
    % 0<a<1
    for i = 1:N
        k = 0; % initialisation
        U = rand(1,1);
        while( U>=a )
            U = U*rand(1,1); 
            k = k+1;
        end
        X(i) = k;
    end
end