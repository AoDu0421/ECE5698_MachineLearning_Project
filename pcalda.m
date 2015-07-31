function [C2,NN]=pcalda(F)
FI=sum(F,2)/48;
A=F-FI*ones(1,48);
C=(A'*A)/48;
[N1,U1]=eig(C);
NN1=A*N1(:,2:48);
for i=1:47
    NN1(:,i)=NN1(:,i)/norm(NN1(:,i));
end
for i=1:48
    C1(:,i)=NN1'*F(:,i);
end
for i=1:16
    CI(:,i)=(C1(:,i)+C1(:,i+16)+C1(:,i+32))/3;
end
for i=1:16
    S(:,:,i)=([C1(:,i),C1(:,i+16),C1(:,i+32)]-CI(:,i)*ones(1,3))*([C1(:,i),C1(:,i+16),C1(:,i+32)]-CI(:,i)*ones(1,3))';
end
SW=sum(S,3);
FI1=sum(CI,2)/16;
B=CI-FI1*ones(1,16);
SB=3*(B*B');
A1=pinv(SB)*SW;
[N,U]=eig(A1);
NN2=N(:,2:16);
NN=NN1*NN2;
for i=1:16
    C2(:,i)=NN2'*CI(:,i);
end
end
