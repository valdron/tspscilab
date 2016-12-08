
//Aufgabe 1

n = Anzahl der Städte

Anzahl der  benötigten Rechenoperationen = (n-1 * Addition + 1 * Vergleich) * (n-1)! = n! - 1

Benötigte Zeit vom schnellsten rechner der Welt bei n = 25:

Geschwindigkeit: 93 014.6 * 10^12 Operationen/s
Rechenoperationen = 25! - 1;

Zeit in Sekunden = Rechenoperationen/Geschwindigkeit = (25! -1)/(93 014.6 * 10^12)
                 = 166 761 026 s
                 = 63.4555 months
                 
//Aufgabe 2
Aufgabe2.jpeg
Wie man im Bild sehen kann führt der Greedy-Algorithmus nie zur optimalen Lösung egal welcher Punkt als Startpunkt gewählt wird


//aufgade 3

tsp2Opt.sci
tsp2OptTest.sce

Example 3: 20 - 4 - 7 - 11 - 21 - 3 - 10 - 8 - 15 - 17 - 16 - 14 - 2 - 19 - 13 - 9 - 6 - 18 - 1 - 12 - 5 - 22
Länge: 781

Example 4: 39 - 32 - 21 - 47 - 13 - 25 - 14 - 23 - 11 - 12 - 20 - 33 - 15 - 46 - 36 - 30 - 43 - 17 - 27 - 19 - 37 - 6 - 28 - 7 - 18 - 44 - 31 - 38 - 8 - 1 - 9 - 40 - 22 - 16 - 3 - 34 - 41 - 29 - 5 - 42 - 2 - 26 - 4 - 35 - 45 - 10 - 24 - 48
Länge: 35 608

Example 5:    16 - 20 - 44 - 5 - 53 - 12 - 58 - 7 - 55 - 13 - 11 - 28 - 57 - 29 - 15 - 1 - 21 - 18 - 26 - 51 - 50 - 24 - 43 - 46 - 32 - 34 - 35 - 19 - 39 - 30 - 33 - 45 - 8 - 54 - 14 - 37 - 10 - 9 - 52 - 27 - 38 - 4 - 25 - 56 - 2 - 22 - 40 - 49 - 3 - 47 - 6 - 42 - 41 - 23 - 31 - 17 - 36 - 48 - 59
Länge:1018

//Aufgabe 4

tspSimulatedAnnealing.sci
tspSimulatedAnnealingTest.sce

Example 3: 0.999 100 1 -> 781 (~4600 Versuche)
Example 4: 0.9999 10000 0.001 -> 33 644 (~161 000 Versuche)
Example 5: 0.9999 10000 0.001 -> 997 (~161 000 Versuche) mit Beta: 0.99999 -> 992 (~1 610 000 Versuche)


//Aufgabe 5

tspDistOnSphere.sci
tspDistOnSphereTest.sce

aus google maps:
Stadt           Breite          Länge
'Esslingen'     48.7433425      9.2562468
'Moscow'        55.7558260      37.6173000
'Tokyo'         35.6894875      139.6917064
'Sydney'        -33.8688197     151.2092955
'Kapstadt'      -33.9248685     18.4240553
'Buenos Aires'  -34.6036844     -58.5314522


Route:  1 - 5 - 6 - 4 - 3 - 2
Länge: 45 249.409 km




