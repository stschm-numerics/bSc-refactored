function f = calculate_weierstrass(x,a,b,nMax)
% CALCULATE_WEIERSTRASS berechnet Summanden der Weierstraß-Reihe
% 
% EINGABE:    x die Stützstellen
%             a, b mit: a > 1 (oft ungerade),  0 < b < 1, a*b >= 1,
%             nMax maximaler SUmmand
% 
% AUSGABE:    f die Weierstraß-Summe bis nMax
n = (0:nMax);
f_temp = (b.^n) .* cos((a.^n) * pi .*x); % Vektorisierte Weierstraß-Summanden
f = sum(f_temp,2);
end