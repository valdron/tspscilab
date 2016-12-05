// tspSimulatedAnnealing.sce
clear;
exec tspDraw.sci;
exec tspExamples.sci;
exec tspLength.sci;
exec tsp2Opt.sci;
exec tspGreedy.sci;
exec tspBruteForce.sci;
exec tspSimulatedAnnealing.sci;

global name dist pos Beta Thigh Tlow;

//Example 3: 0.999 100 1 -> 781 (~4600 Versuche)
//Example 4: 0.9999 10000 0.001 -> 33 644 (~161 000 Versuche)
//Example 5: 0.9999 10000 0.001 -> 997 (~161 000 Versuche) mit Beta: 0.99999 -> 992 (~1 610 000 Versuche)

Beta = 0.9999;
Thigh = 10000;
Tlow = 0.0001;
tspExamples(4);
route =  tspSimulatedAnnealing();
tspDraw(route);



tspExamples(5);
