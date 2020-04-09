function [x,Jnorma]=legkisebbnegyzetek(t,f,n)
%% A Gauss-féle normál-egyenlet megvalósítása n-edfokú polinomok esetén

% A feladat: adott (t_i,f_i) alakú pontokra legkisebb négyzetek módszerének
% megvalósítása Gauss-féle normál-egyenlettel
%
%


%% Bemenõ paraméterek listája: 

% t           alappontok
% f           t-hez tartozó értékek
% n           a közelítõ módszer rendje


%% Gauss-fele normalegyenletben az A eh.mtx.
A(:,1)=ones(length(t),1);
for j=2:n+1
    A(:,j)=A(:,j-1).*t';
end

%% Gauss-fele normalegyenlet mo-sa
x = (A'*A)\(A'*f');

%% Maradekvektor
Jnorma = norm(A*x-f',2)^2;


