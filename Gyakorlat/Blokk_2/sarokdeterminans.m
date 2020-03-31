function v=sarokdeterminans(A)
%%
% Egy adott negyzetes matrixra kiszamolja a
% sarokdeterminansait

for j=1:length(A)
    v(j)=det(A(1:j,1:j)); % bal felso sarokdeterminans
end
