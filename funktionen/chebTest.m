% numerische Tests
function chebTest(f,v)
nn = 2 * round (2.^(0:10) ); % verschiedene Approximationsgrade 2 - 2048
[errorInt, errorProj] = approx_function(f,nn);
figure;
% Erster Subplot | Konvergenzordnung und Fehler
ax1 = subplot(1,2,1); 
logLogPlot(ax1, nn, nn.^(-v), 'Konvergenzvergleich'); % Plot der Konvergenzordnung
hold on
logLogPlot(ax1, nn, errorInt, 'Konvergenzvergleich'); % Plot des Interpolationsfehlers
logLogPlot(ax1, nn, errorProj, 'Konvergenzvergleich'); % Plot des Projektionsfehlers
hold off
% Zweiter Subplot | die eigentliche Funktion
subplot (1,2,2) , plot(f), axis ([-1 1 -1 1]), title('Funktion f')
end