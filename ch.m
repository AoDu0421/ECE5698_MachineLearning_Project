function W=ch(NN,FR,C)
CR=NN'*FR;
D=zeros(1,16);
for i=1:16
    D(i)=norm(CR-C(:,i));
end
[Q,W]=min(D);
if Q/norm(CR)>=0.25
    W=0;
end
end
        