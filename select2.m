function [F,AF,BF,CF,DF,EF,FF,GF,HF,IF,JF,KF]=select2(I)
E=edge(I,'prewitt');
i=0;
j=0;
k=0;
ed1=0;
ed2=0;
ed3=0;
while ed1<2
  i=i+1;
  E1=find(E(i,:)==1);
  ed1=size(E1);
end;
while ed2<10
  j=j+1;
  E2=find(E(:,j)'==1);
  ed2=size(E2);
end
while ed3<10
  k=k+1;
  E3=find(E(:,640-k+1)'==1);
  ed3=size(E3);
end
F=reshape(I(i:i+39,floor((j+640-k+1)/2)-39:floor((j+640-k+1)/2)),1600,1);
AF=reshape(I(i+100:i+139,floor((j+640-k+1)/2)-79:floor((j+640-k+1)/2)-40),1600,1);
BF=reshape(I(i+170:i+209,floor((j+640-k+1)/2)-39:floor((j+640-k+1)/2)),1600,1);
CF=reshape(I(i:i+39,floor((j+640-k+1)/2)+1:floor((j+640-k+1)/2)+40),1600,1);
DF=reshape(I(i+40:i+79,floor((j+640-k+1)/2)-39:floor((j+640-k+1)/2)),1600,1);
EF=reshape(I(i+40:i+79,floor((j+640-k+1)/2)+1:floor((j+640-k+1)/2)+40),1600,1);
FF=reshape(I(i+140:i+179,floor((j+640-k+1)/2)-39:floor((j+640-k+1)/2)),1600,1);
GF=reshape(I(i+100:i+139,floor((j+640-k+1)/2)-79:floor((j+640-k+1)/2)-40),1600,1);
HF=reshape(I(i+140:i+179,floor((j+640-k+1)/2)-39:floor((j+640-k+1)/2)),1600,1);
IF=reshape(I(i+170:i+209,floor((j+640-k+1)/2)+1:floor((j+640-k+1)/2)+40),1600,1);
JF=reshape(I(i+210:i+249,floor((j+640-k+1)/2)+1:floor((j+640-k+1)/2)+40),1600,1);
KF=reshape(I(i+210:i+249,floor((j+640-k+1)/2)-39:floor((j+640-k+1)/2)),1600,1);
end