% main für die Weierstraß-Funktion f = sum((b.^n).*cos(a.^n*pi*x),1)
% Die Parameter sollten folgenden Bedingungen genügen
% a > 1 (oft ungerade),  0 < b < 1, a*b >= 1

% TEST 1
plot_weierstrass(5,.6,10,10000) % Paramter aus meiner Bachelorarbeit

% TEST 2
%plot_weierstrass(x,a,b,nMax,p)

% TEST 3
%plot_weierstrass(x,a,b,nMax,p)

% TEST 4
%plot_weierstrass(x,a,b,nMax,p)
