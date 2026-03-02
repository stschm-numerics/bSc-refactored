function [errorInt, errorProj] = approx_function(f,nn)
% APPROX_FUNCTION berechnet die tschebyschev Interpolante und Projektion, sowie deren Approximationsfehler
% 
% EINGABE:    f die Funktion
%             nn ein Array mit den gewünschten Approximationsgraden
% 
% AUSGABE:    errorInt Array mit den Fehlern der Interpolation
%             errorProj Array mit den Fehlern der Projektion
errorInt = zeros ( length (nn) , 1); % Fehler Interpolante
errorProj = zeros ( length (nn) , 1); % Fehler Projektion
for j = 1 : length (nn)
    n = nn(j); % Approximationsgrad auslesen
    % Approximationen erstellen (Interpolante/ Projektion)
    intpol = chebfun (f,n+1) ; proj = chebfun (f, 'trunc ',n+1);
    % Approximationsfehler berechnen
    errorInt(j) = norm (f-intpol , inf ); errorProj(j) = norm (f-proj , inf );
end
end