vector=randn(1,15) % matrice 1 linie 15 coloane (un vector linie) cu elemente
%aleatoare cu distributie normala (gaussiana).

for i=1:1:15 
    if(vector(i)<0) % verific conditia ca elementele vectorului sa fie negative
        a=vector(i) % afisez elementele negative 
    end
end