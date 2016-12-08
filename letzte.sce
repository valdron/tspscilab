
clear;
exec tspDraw.sci;
exec tspExamples.sci;
exec tspLength.sci;
exec tsp2Opt.sci;
exec tspGreedy.sci;
exec tspBruteForce.sci;
exec tspSimulatedAnnealing.sci;
exec tspDistOnSphere.sci;

global name dist pos Beta Thigh Tlow;

pos = [48.7433425 9.2562468
55.7558260 37.6173000
35.6894875 139.6917064
-33.8688197 151.2092955
-33.9248685 18.4240553
-34.6036844 -58.5314522]

name = [
'Esslingen'
'Moscow'
'Tokyo'
'Sydney'
'Kapstadt'
'Buenos Aires'
]

n = size(name,1);
dist = zeros(n,n);

for i = 1:n
    for j = 1:n
        dist(i,j) = tspDistOnSphere(pos(i,1) , pos(i,2) , pos(j,1) , pos(j,2));
   end
end


tour = tsp2Opt();
