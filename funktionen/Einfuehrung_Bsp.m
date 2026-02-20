% Parameter einstellen
x = chebfun('x'); a = 5; b = .6; f = 0;
 for n = 0:10 % Weierstraß Funktion aufstellen
     f = f + b^n*cos(a^n*pi*x);
 end
% Funktion interpolieren und plotten
fn = chebfun(f,10000); plot(fn), ylim([-3 3])