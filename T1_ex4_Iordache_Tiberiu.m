t=0:0.002:6;% Semnalul exista doar pentru perioada de timp [0,6]s, 
            % iar rezolutia temporala este de 2ms.
T=3;   % Perioada semnalului este de 3 secunde
f=1/T; % Frecventa este 1/Perioada Hz
x=0.8*sin(2*pi*f*t);
% x este variabila ce reprezinta semnalul.
% Deoarece functia sin genereaza un semnal sinusoidal de amplitudine 1 si
%  simetric fata de origine, am ales sa il inmultesc cu 0.8 pentru a obtine
%  amplitudinea varf la varf de 1.6 de care am nevoie.
% Argumentul functiei este omega*t, omega fiind egal cu 2*pi*f.
x(x<0) = 0;
% Cand amplitudinea este negativa, functia x(x<0)=0 face semnalul 0, acesta
%  devenind mono alternanta
subplot(3,1,1);
% Functia subplot imi permite sa reprezint intr o singura fereastra toate
%  cele 3 semnale care difera in functie de rezolutia temporala.
plot(t,x),grid,xlabel('Timp(s)'),ylabel('Amplitudine(V)'),axis([0 6 0 0.8]),title('Semnal Sinusoidal mono alternanta 2ms');
% Axa ox reprezinta timpul in secunde, axa oy reprezinta amplitudinea in
% volti.

% Similar pentru celelalte doua cazuri, rezolutia temporala fiind singul
%  lucru care se schimba

t=0:0.02:6;
T=3;
f=1/T; 
x=0.8*sin(2*pi*f*t);
x(x<0) = 0; 
subplot(3,1,2);
plot(t,x),grid,xlabel('Timp(s)'),ylabel('Amplitudine(V)'),axis([0 6 0 0.8]),title('Semnal Sinusoidal mono alternanta 20ms');

t=0:0.2:6;
T=3;
f=1/T; 
x=0.8*sin(2*pi*f*t);
x(x<0) = 0; 
subplot(3,1,3);
plot(t,x),grid,xlabel('Timp(s)'),ylabel('Amplitudine(V)'),axis([0 6 0 0.8]),title('Semnal Sinusoidal mono alternanta 200ms');





