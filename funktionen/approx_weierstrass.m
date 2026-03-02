function fn = approx_weierstrass(s,p)
% APPROX_WEIERSTRASS erstellt aus einer Funktion eine Chebfun
% 
% EINGABE:    s die Funktion
%             p die Anzahl der Stützstellen
% 
% AUSGABE:    fn die entsprechende Chebfun
fn = chebfun(s,p);
end