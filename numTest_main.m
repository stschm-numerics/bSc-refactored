% Tests für verschiedene Funktionen
% f die gewünschte differenzierbare Funktionen
% v die jeweillige Differentiationsklasse + 1
x = chebfun('x');
f = abs(x).^3;
v = 3;
% chebTest(f,v);
chebTest(f,v);