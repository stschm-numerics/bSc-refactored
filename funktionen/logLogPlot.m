function h = logLogPlot(ax, x, y, titel)
% EINGABE:    ax der entsprechende Subplot
%             x Array mit Approximationsgraden
%             y Array der Approximationsfehler
%             titel gewünschter Name des Subplots
% 
% AUSGABE:    h den Parametern entsprechender loglog-Plot
% 
% BEISPIEL:   logLogPlot(ax1, nn, errorInt, 'Konvergenzvergleich');
varName = inputname(3); % Variablennamen für Legende
if isempty(varName)
    varName = 'Konvergenzordnung';
end
% eigentlicher Plot
h = loglog(ax, x, y,'DisplayName', varName);
% Formatierung
title(ax, titel);
axis ([0 50 0 50])
% Legende aktualisieren
legend(ax, 'show', 'Location', 'best');
end