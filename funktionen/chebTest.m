function chebTest(f,v,dateiName)
% CHEBTEST berechnet tschbeyschev Approximationen, deren Fehler und erstellt davon einen loglog-Plot
% 
% EINGABE:    f die zu approximierende Funktion
%             v die Differentiationsklasse von f
%             dateiName Name der Bilddatei mit den Ergebnissen
% 
% AUSGABE:    Eine Bilddatei mit den Plots der Konvergenz und der Funktion f selbst
nn = 2 * round (2.^(0:10) ); % verschiedene Approximationsgrade 2 - 2048
[errorInt, errorProj] = approx_function(f,nn);
img = figure;
% Erster Subplot | Konvergenzordnung und Fehler
ax1 = subplot(1,2,1);
logLogPlot(ax1, nn, nn.^(-v), 'Konvergenzvergleich'); % Plot der Konvergenzordnung
hold on
logLogPlot(ax1, nn, errorInt, 'Konvergenzvergleich'); % Plot des Interpolationsfehlers
logLogPlot(ax1, nn, errorProj, 'Konvergenzvergleich'); % Plot des Projektionsfehlers
hold off
% Zweiter Subplot | die eigentliche Funktion
subplot (1,2,2) , plot(f), axis ([-1 1 -1 1]), title('Funktion f')

% Bilddatei erstellen
zielOrdner = 'C:\ZDB\GitHub\bSc-refactored\ergebnisse';
fileName = ['numTest-', dateiName, '.png'];
gesamtPfad = fullfile(zielOrdner,fileName);
% .png erstellen und speichern
exportgraphics(img, gesamtPfad)
% figure automatisch schließen
close(img)
end