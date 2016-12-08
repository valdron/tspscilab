clear;
exec tspGetCoordFromName.sci;
exec tspDistOnSphere.sci;


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
pos = zeros(_size,2);

for j = 1:_size
    [lat,lon]=tspGetCoordFromName(name(j));
    pos(j,1)=lat;
    pos(j,2)=lon;
end

dist = zeros(_size,_size);

for i = 1:_size
    for j = 1:_size
        dist(i,j) = tspDistOnSphere(pos(i,1) , pos(i,2) , pos(j,1) , pos(j,2));
   end
end

disp ende;
