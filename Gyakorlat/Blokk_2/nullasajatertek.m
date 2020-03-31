function nullasajatertek(A)
%%
% Egy adott negyzetes matrixra TOL ertek mellett
% eldonti, hogy a nulla s.e.-e vagy sem, azaz hogy
% invertalhato-e vagy sem


v=abs(eig(A)) >= 1e-14; %s.e.-kek nagyobbak-e mint 0 1:igen; 0:nem
invhato_e=sum(abs(v)) == size(A,2); % 1:igen; invhato; 0:nem invhato
if invhato_e == 1
    disp('Az A matrix invertalhato')
else 
    disp('Az A matrix nem invertalhato')
end
