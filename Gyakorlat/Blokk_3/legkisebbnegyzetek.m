function [x,Jnorma]=legkisebbnegyzetek(t,f,n)
%% A Gauss-f�le norm�l-egyenlet megval�s�t�sa n-edfok� polinomok eset�n

% A feladat: adott (t_i,f_i) alak� pontokra legkisebb n�gyzetek m�dszer�nek
% megval�s�t�sa Gauss-f�le norm�l-egyenlettel
%
%


%% Bemen� param�terek list�ja: 

% t           alappontok
% f           t-hez tartoz� �rt�kek
% n           a k�zel�t� m�dszer rendje


%% Gauss-fele normalegyenletben az A eh.mtx.
A(:,1)=ones(length(t),1);
for j=2:n+1
    A(:,j)=A(:,j-1).*t';
end

%% Gauss-fele normalegyenlet mo-sa
x = (A'*A)\(A'*f');

%% Maradekvektor
Jnorma = norm(A*x-f',2)^2;


