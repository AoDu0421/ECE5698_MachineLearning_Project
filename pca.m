function [C1,NN]=pca(F)
FI=sum(F,2)/16;
A=F-FI*ones(1,16);
C=(A'*A)/16;
[N,U]=eig(C);
NN=A*N(:,2:16);
for i=1:15
    NN(:,i)=NN(:,i)/norm(NN(:,i));
end
for i=1:16
    C1(:,i)=NN'*F(:,i);
end
end