t=0:0.002:12;% Semnalul exista doar pentru perioada de timp [0,12]s, 
             % iar rezolutia temporala este de 2ms.
T=6;   % Perioada semnalului este de 6 secunde
       % Am ales aceasta perioada deoarece, numai la frecventa de 1/6Hz panta putea
       %  fi +1V.
f=1/T; % Frecventa este 1/Perioada Hz 
x=1.5*sawtooth(2*pi*f*t,0.5)-0.5;
% x este variabila ce reprezinta semnalul.
% Deoarece functia sawtooth genereaza un semnal triunghiular de amplitudine 1 si
%  simetric fata de origine, am ales sa il inmultesc cu 1.5 pentru a obtine
%  amplitudinea varf la varf de 3 de care am nevoie, si sa scad 0.5 pentru
%  a seta intervalul amplitudinii de la [1.5,-1.5]V la [1,-2]V.
% Primul argument al functiei este omega*t, omega fiind egal cu 2*pi*f.
% Al doilea argument primit de funtia sawthoot(0.5) reprezinta latimea de
%  care am nevoie pentru a genera un semnal triunghiular simetric.
subplot(3,1,1);
% Functia subplot imi permite sa reprezint intr o singura fereastra toate
%  cele 3 semnale care difera in functie de rezolutia temporala.
plot(t,x),grid,xlabel('Timp(s)'),ylabel('Amplitudine(V)'),axis([0 12 -2 1]),title('Semnal Triunghiular 2ms');
% Axa ox reprezinta timpul in secunde, axa oy reprezinta amplitudinea in
%  volti.


% Similar pentru celelalte doua cazuri, rezolutia temporala fiind singul
%  lucru care se schimba

t=0:0.02:20;
T=6;
f=1/T;   
x=1.5*sawtooth(2*pi*f*t,0.5)-0.5;
subplot(3,1,2);
plot(t,x),grid,xlabel('Timp(s)'),ylabel('Amplitudine(V)'),axis([0 12 -2 1]),title('Semnal Triunghiular 20ms');

t=0:0.2:20;
T=6;
f=1/T;   
x=1.5*sawtooth(2*pi*f*t,0.5)-0.5;
subplot(3,1,3);
plot(t,x),grid,xlabel('Timp(s)'),ylabel('Amplitudine(V)'),axis([0 12 -2 1]),title('Semnal Triunghiular 200ms');