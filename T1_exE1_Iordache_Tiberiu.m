
for i = 1:21
    a(1,i)= (i*0.1)-0.1;
end
b=ones(21,1)% Pentru a se putea realiza inmultirea, b trebuie sa aiba o singura coloana cu 21 de elementr
a*b % Rezultatul este un numar (21)
b*a % Rezultatul este o matrice de tipul [21,21]
a.*b % Nu se poate inmulti element cu element cand inmultesc o linie cu o coloana



