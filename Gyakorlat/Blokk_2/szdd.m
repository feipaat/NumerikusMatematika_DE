function szdd(A)
%%
% Egy adott negyzetes matrixrol eldonti, hogy SZDD-e vagy sem


szdd_e=all((2*abs(diag(A))) > sum(abs(A),2)); %1 SZDD; 0 nem SZDD
if szdd_e == 1
    disp('Az A matrix SZDD')
else 
    disp('Az A matrix nem SZDD')
end
