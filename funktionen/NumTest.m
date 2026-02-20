%               Test für Differenzierbare Funktionen
% e=0.01; x = chebfun('x'); f = cos(1./(abs(x)+e)); % definiere die Testfunktion
% %initialisiere Arrays
% nn = 2*round(2.^(0:6)); % Approximationsgrade
% ei = zeros(length(nn),1); % Fehler Interpolante
% ep = zeros(length(nn),1); % Fehler Projektion
% % schreibe Daten in die Arrays
% for j = 1:length(nn)
% 	n = nn(j); % Approximationsgrad auslesen
% 	% Approximationen erstellen (Interpolante/Projektion)
% 	pn = chebfun(f,n+1); fn = chebfun(f,'trunc',n+1);
% 	% Approximationsfehler berechnen
% 	ei(j) = norm(f-pn,inf); ep(j) = norm(f-fn,inf);
% end
% figure, hold off
% % Plot der Konvergenzordnung
% subplot(1,2,1) , loglog(nn,nn.^(-1),'r')
% % Plot der Fehlerabschaetzung
% hold on, loglog(nn,ei,'.-b'), loglog(nn,ep,'*--g'),grid on,axis([0 50 0 50])
% legend('Konvergenzordnung O(n^{-1})','Fehler Interpolante','Fehler Projektion')
% % Plot der Funktion
% subplot(1,2,2), plot(f), axis([-1 1 -1 1])
%--------------------------------------------------------------------------
%               Test für Analytische Funktionen
% x = chebfun('x'); f = ((x+4)*(x+2)*(x+1)*(x-1)*(x-2)*(x-4))/(x+5).^2; % definiere die Testfunktion
% %initialisiere Arrays
% nn = 0:5:100; % Approximationsgrade
% ei = zeros(length(nn),1); % Fehler Interpolante
% ep = zeros(length(nn),1); % Fehler Projektion
% % schreibe Daten in die Arrays
% for j = 1:length(nn)
% 	n = nn(j); % Approximationsgrad auslesen
% 	% Approximationen erstellen (Interpolante/Projektion)
% 	pn = chebfun(f,n+1); fn = chebfun(f,'trunc',n+1);
% 	% Approximationsfehler berechnen
% 	ei(j) = norm(f-pn,inf); ep(j) = norm(f-fn,inf);
% end
% rho = 2;
% figure, hold off
% % Plot der Konvergenzordnung
% subplot(1,2,1), semilogy(nn,rho.^(-nn),'r')
% % Plot der Fehlerabschaetzung
% hold on, semilogy(nn,ei,'.-b'), semilogy(nn,ep,'*--g'),grid on, axis([0 50 0 50])
% legend('geometrische Konvergenzordnung','Fehler Interpolante','Fehler Projektion')
% % Plot der Funktion
% subplot(1,2,2), plot(f), axis([-1 1 0 2])

%-------------------------------------------------------------------------
%                           Differenzierbar
%-------------------------------------------------------------------------
% abs(x).^3
% abs(cos(3*x)).^7
% abs(x).^(9)+7*abs(x).^(5)+abs(x).^(2)
% x*abs(x)

% cos(1./(abs(x)+e))
%-------------------------------------------------------------------------
%                           Analytisch - nicht ganz
%-------------------------------------------------------------------------
% 1./(1+25*x.^2)
% sqrt(5-x)
%-------------------------------------------------------------------------
%                           Analytisch - ganz
%-------------------------------------------------------------------------
% exp(x)
% sin(x).^(2)+cos(pi*x)
% tan(x)+sin(20*x)
% ((x+4)*(x+2)*(x+1)*(x-1)*(x-2)*(x-4))/14
% exp(pi*x)+cos(5*x)-sin(pi*x/2)

% ((x+4)*(x+2)*(x+1)*(x-1)*(x-2)*(x-4))/(x+5).^2