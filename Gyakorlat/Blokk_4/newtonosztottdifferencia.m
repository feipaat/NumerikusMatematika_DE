function [Newton_osztott_differencia_matrix]=newtonosztottdifferencia(x,f_x)
%% Egy adott (x,f_x) adatparhoz tartozo Newton fele osztott veges differencia matrix

n = length(x);

%% Elso osztott veges differencia hanyados
for k = 1 : n - 1
   N(k, 1) = (f_x(k+1) - f_x(k))/(x(k+1) - x(k));
end

%% A tobbi osztott veges differencia hanyados
for j = 2 : n - 1
   for k = 1 : n - j
      N(k, j) = (N(k+1, j - 1) - N(k, j - 1))/(x(k+j) - x(k));
   end
end

%% A matrix osszerakasa
N_bovitett = [N; zeros(1,n-1)];
Newton_osztott_differencia_matrix = [x' f_x' N_bovitett];
