function [norma_p, norma_max]=p_max_norma(x,p)
%% Egy adott vektor p-norma es maxnorma szamitas

format long
norma_p=(sum(abs(x).^p))^(1/p);
norma_max=max(abs(x));