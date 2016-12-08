// tsp2Opt.sce
clear;
exec tspDraw.sci;
exec tspExamples.sci;
exec tspLength.sci;
exec tsp2Opt.sci;
exec tspGreedy.sci;
exec tspBruteForce.sci;

global name dist pos;

//unsere_route=[1 12 5 22 20 4 11 21 7 3 10 8 15 17 16 14 2 19 13 9 6 18]
tspExamples(5);
tour=tsp2Opt();




