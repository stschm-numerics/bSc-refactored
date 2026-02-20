# BACHELOR THESIS REFACTORED
Dieses Repository beinhaltet Teile des Codes aus meiner Bachelorarbeit, zum Thema  
"Tschebyschev Approximation differenzierbarer und analytischer Funktionen".    
Sie baute wesentlich auf den Inhalten des Buches "Approximation theory and practice" von N. Trefethen und  
dem MATLAB-Paket Chebfun auf.  

In diesem Projekt möchte ich den ursprünglichen Code verbessern. Der initial commit entspricht dem Stand des Codes in meiner Bachelorarbeit.  
Ich habe unter dem Zeitdruck der Abgabefrist nur einfache Skripte geschrieben, die irgendwie die benötigten Plots generieren sollten.  
Nun möchte ich das Ganze professioneller angehen, besser strukturieren und modularisieren und nebenbei auch den Umgang mit GitHub üben.  

## Geplant ist:  
- **Modularisierung:** Umstellung von einfachen Skripts auf wiederverwendbare Funktionen []
- **Dokumentation:** Kommentierung jeder Funktion, sowieso Neubenennung einiger Variablen []
- **Eingabe:** Umstellung der Dateneingabe auf die Konsole []
- **Visualisierung:** eventuell Implementierung einer UI mit dem  MATLAB App Designer []

## Voraussetzungen
Um den Code auszuführen werden MATLAB und das Chebfun-Paket benötigt.  
- **MATLAB:** Alles rund um MATLAB, inklusive Installationsanleitung, gibt es bei [MathWorks](https://de.mathworks.com/)
- **Chebfun:** Das Chebfun-Paket, inklusive Installationsanleitung, gibt es beim [Chebfun Projekt](https://www.chebfun.org/) oder auf [GitHub](https://github.com/chebfun)

## Struktur 
- **/funktionen:** hier befinden sich alle benötigten Funktionen
- **/ergebnisse:** hier poste ich die von den main-Programmen generierten Plots
- **weierstrass_main.m:** die main-Datei für die Approximation und den Plot der Weierstrass-Funktion
- **numTest_main.m:** die main-Datei für die Ausführung der numerischen Tests zur Tschebyscheff-Approximation

## Credits
Mein Code basiert auf dem MATLAB-Paket Chebfun (1) und den Beispielen aus dem oben erwähnten Buch von N. Trefethen (2).  
(1) T. A. Driscoll, N. Hale, and L. N. Trefethen, editors, Chebfun Guide, Pafnuty Publications, Oxford, 2014.  
  
(2)  L. N. Trefethen. Approximation Theory and Approximation Practice.
Philadelphia, PA: Society for Industrial und Applied Mathematics (SIAM),
2013 
