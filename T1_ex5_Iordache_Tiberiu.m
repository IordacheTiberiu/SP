t=0:0.002:8;% Semnalul exista doar pentru perioada de timp [0,8]s, 
            % iar rezolutia temporala este de 2ms.
T=4;   % Perioada semnalului este de 4 secunde
f=1/T; % Frecventa este 1/Perioada Hz
x=1.5*abs(sin(2*pi*f*t));
% x este variabila ce reprezinta semnalul.
% Deoarece functia sin genereaza un semnal sinusoidal de amplitudine 1 si
%  simetric fata de origine, am ales sa il inmultesc cu 1.5 pentru a obtine
%  amplitudinea varf la varf de 3 de care am nevoie.
% Argumentul functiei este omega*t, omega fiind egal cu 2*pi*f.
% Functia abs creeaza semnalul sinusoidal dubla alternanta.
subplot(3,1,1);
% Functia subplot imi permite sa reprezint intr o singura fereastra toate
%  cele 3 semnale care difera in functie de rezolutia temporala.
plot(t,x),grid,xlabel('Timp(s)'),ylabel('Amplitudine(V)'),axis([0 8 0 1.5]),title('Semnal Sinusoidal dubla alternanta 2ms');
% Axa ox reprezinta timpul in secunde, axa oy reprezinta amplitudinea in
% volti.


% Similar pentru celelalte doua cazuri, rezolutia temporala fiind singul
%  lucru care se schimba
t=0:0.02:8;
T=4;
f=1/T; 
x=1.5*abs(sin(2*pi*f*t));
subplot(3,1,2);
plot(t,x),grid,xlabel('Timp(s)'),ylabel('Amplitudine(V)'),axis([0 8 0 1.5]),title('Semnal Sinusoidal dubla alternanta 20ms');


t=0:0.2:8;
T=4;
f=1/T; 
x=1.5*abs(sin(2*pi*f*t));
subplot(3,1,3);
plot(t,x),grid,xlabel('Timp(s)'),ylabel('Amplitudine(V)'),axis([0 8 0 1.5]),title('Semnal Sinusoidal dubla alternanta 200ms');
