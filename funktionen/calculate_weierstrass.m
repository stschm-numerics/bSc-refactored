% vektorisierte Weierstrass-Funktion
function f = calculate_weierstrass(x,a,b,nMax)
    n = (0:nMax);
    f_temp = (b.^n) .* cos((a.^n) * pi .*x);
    f = sum(f_temp,2);
end