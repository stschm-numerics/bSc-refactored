% Funktion zum Plotten
function h = logLogPlot(ax, x, y, titel)
    % Variablennamen für Legende
	varName = inputname(3);
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