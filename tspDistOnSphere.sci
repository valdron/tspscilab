function l = tspDistOnSphere(lat1, lng1, lat2, lng2)
    winkel = acos(sin(lat1/360*2*%pi)*sin(lat2/360*2*%pi) +cos(lat1/360*2*%pi)*cos(lat2/360*2*%pi)*cos(lng2/360*2*%pi-lng1/360*2*%pi));
    l= winkel / (2*%pi) * 40000;
endfunction
