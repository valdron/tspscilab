clear;
exec tspGetCoordFromName.sci;
exec tspDistOnSphere.sci;
exec tspDraw.sci;
exec tspLength.sci;
exec tsp2Opt.sci;

global name dist pos;

disp "wieviele städte:"
anzahl = scanf("%d");
name = [];
for i =  1:anzahl
    disp "Name der Stadt oder exit:\n"
    text = scanf("%s");
    if strcmp(text,'exit') == 0 then
        break;
    end
    name(i) = text;    
end


_size = length(length(name));
coord = zeros(_size,2);

for j = 1:_size
    [lat,lon]=tspGetCoordFromName(name(j));
    coord(j,1)=lat;
    coord(j,2)=lon;
end

dist = zeros(_size,_size);

for i = 1:_size
    for j = 1:_size
        if i == j then
            dist(i,j) = 0;
        else
            dist(i,j) = tspDistOnSphere(coord(i,1) , coord(i,2) , coord(j,1) , coord(j,2));
        end
   end
end

pos = zeros(_size,2);

for j = 1:_size
    
    pos(j,1)=coord(j,2);
    pos(j,2)=coord(j,1);
end

tsp2Opt();

