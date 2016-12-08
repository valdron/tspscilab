//<-function--
function l = tspLength(tour)
//
// INPUT:
//  tour ... permutation of 1:n
//
// OUTPUT:
//   l ... length of tour

    global dist;
    
    l = 0;
    j = tour($);
    for i = 1:length(tour)
        k = tour(i);
        l = l + dist(j,k);
        j = k;
    end
    
endfunction
//--function->
