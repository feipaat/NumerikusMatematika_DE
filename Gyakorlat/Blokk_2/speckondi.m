function [cond_A_2, cond_H_2, condest_A_2, condest_H_2]=speckondi(N)
%% Kondicioszam es kondicioszam becslese adott N-re
%
% - A masodik derivalt standard masodrendu differenciamatrixa
% - A Hilbert-matrixra


format long
e=ones(N,1);
A=spdiags([-e 2*e -e], [-1 0 1], N, N);

H=zeros(N);
for i=1:N
    for j=1:N
        H(i,j)=1/(i+j-1);
    end
end

cond_A_2=cond(A,2);
cond_H_2=cond(H,2);
condest_A_2=condest(A);
condest_H_2=condest(H);
