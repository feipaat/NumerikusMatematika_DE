function mmatrixelojel(A)

A=A-diag(diag(A));
for j=1:length(A)
    for k=1:length(A)
        offdiag_elojel(j,k)=A(j,k)<=0;
    end
end
if sum(sum(offdiag_elojel))==length(A)^2
    disp('Az adott matrix teljesiti az M-matrixhoz tartozo elojeleloszlast')
else
    disp('Az adott matrix nem teljesiti az M-matrixhoz tartozo elojeleloszlast')
end
