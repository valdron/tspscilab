function tour=tsp2Opt(start)

//INPUT start: start tour default 1:n

//OUTPUT tour: nearly optimal 2-opt tour
exec tspDraw.sci;

global dist pos;
n=size(pos,'r');

if argn(2) < 1 then
    start = 1:n;
end
best_route=start;
len_best_route = tspLength(best_route);
len_best_swapped_route = %inf;
tspDraw(best_route);

while %T
    for i = 1:n-1
        for j = i+1:n
            swapped_route = [best_route(1:i-1) best_route(j:-1:i) best_route(j+1:n)] 
            len_swapped_route = tspLength(swapped_route);
            if len_swapped_route <  len_best_swapped_route then
                best_swapped_route=swapped_route;
                len_best_swapped_route = len_swapped_route;
            end
        end
    end
    
    len_best_swapped_route = tspLength(best_swapped_route);
    
    if len_best_swapped_route < len_best_route then
        best_route=best_swapped_route;
        len_best_route = len_best_swapped_route;
    else
        break;
    end
    tspDraw(best_route);
end

tour=best_route;

endfunction
