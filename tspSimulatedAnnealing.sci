function tour=tspSimulatedAnnealing(start)

exec tspDraw.sci;
global dist pos Thigh Tlow Beta;
n=size(pos,'r');

if argn(2) < 1 then
    start = 1:n;
end

temp = Thigh;
current_route = start;
current_route_length = tspLength(start);
rand('seed',0);
while temp > Tlow
    
            ij = n * rand(1,2) + 1;
            i = floor(min(ij));
            j = floor(max(ij));
            

            new_route = [current_route(1:i-1) current_route(j:-1:i) current_route(j+1:n)] 
            new_route_length = tspLength(new_route);
            
            z = rand();
            if new_route_length > current_route_length then
                p = exp(-(new_route_length-current_route_length)/temp)
            else
                p = 1;
            end
            
            if z < p then
                current_route = new_route;
                current_route_length = new_route_length;

                
            end
            temp = temp * Beta;
            
            

end

tour = current_route;


endfunction


