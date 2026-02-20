% Visualisierung
function plot_weierstrass(a,b,nMax,p)
    x = chebfun('x');
    f = calculate_weierstrass(x,a,b,nMax);
    fn = approx_weierstrass(f,p);
        figure; hold on
        plot (fn), ylim ([ -3 3])
        title('Weierstraß-Funktion')
end