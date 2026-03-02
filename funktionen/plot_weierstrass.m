function plot_weierstrass(a,b,nMax,p)
% PLOT_WEIERSTRASS berechnet, approximiert und plottet eine Weierstraßfunktion
% 
% EINGABE:    a, b mit: a > 1 (oft ungerade),  0 < b < 1, a*b >= 1,
%             nMax maximaler Summand der Weierstraß-Reihe,
%             p Anzahl der Stützstellen
% 
% AUSGABE:    plot der Weierstraßfunktion
% 
% BEISPIEL:   plot_weierstrass(5,.6,10,10000)
x = chebfun('x');
f = calculate_weierstrass(x,a,b,nMax);
fn = approx_weierstrass(f,p);
figure; hold on
plot (fn), ylim ([ -3 3])
title('Weierstraß-Funktion')
end