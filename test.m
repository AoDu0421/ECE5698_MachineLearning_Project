RI=double(rgb2gray(imread('C:\Users\����\Desktop\part1\15-05.jpg')));
[FR,AFR,BFR]=select1(RI(1:320,1:640),17);
[LFR,LAFR,LBFR,LCFR,LDFR,LEFR,LFFR,LGFR,LHFR,LIFR,LJFR,LKFR]=select2(RI(1:320,1:640));
CFR=reshape(RI(1:320,1:640),320*640,1);
P1=ch(NN1,FR,C1);
P2=ch(NN2,AFR,C2);
P3=ch(NN3,BFR,C3);
P4=ch(NN4,CFR,C4);
L1=ch(NN5,LFR,C5);
L2=ch(NN6,LAFR,C6);
L3=ch(NN7,LBFR,C7);
L4=ch(NN8,LCFR,C8);
L5=ch(NN9,LDFR,C9);
L6=ch(NN10,LEFR,C10);
L7=ch(NN11,LFFR,C11);
L8=ch(NN12,LGFR,C12);
L9=ch(NN13,LHFR,C13);
L10=ch(NN14,LIFR,C14);
L11=ch(NN15,LJFR,C15);
L12=ch(NN16,LKFR,C16);
LP1=ch(NN17,FR,C17);
LP2=ch(NN18,AFR,C18);
LP3=ch(NN19,BFR,C19);
LP4=ch(NN20,CFR,C20);