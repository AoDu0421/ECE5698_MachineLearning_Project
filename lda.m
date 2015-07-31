function [C1,NN]=lda(F,X)
S=zeros(1600,1600,16);
for i=1:16
    S(:,:,i)=([X(:,i),X(:,i+16),X(:,i+32)]-F(:,i)*ones(1,3))*([X(:,i),X(:,i+16),X(:,i+32)]-F(:,i)*ones(1,3))';
end
SW=sum(S,3);
FI=sum(F,2)/16;
B=F-FI*ones(1,16);
SB=3*(B*B');
A=pinv(SB)*SW;
[N,U]=eig(A);
NN=N(:,2:16);
for i=1:16
    C1(:,i)=NN'*F(:,i);
end
end

