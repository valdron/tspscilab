function [lat, lon]=tspGetCoordFromName(city)
    doc = xmlRead("http://maps.googleapis.com/maps/api/geocode/xml?address=" + city);
    latxml = xmlXPath(doc,"/GeocodeResponse/*[2]/geometry/location/lat");
    lonxml = xmlXPath(doc,"/GeocodeResponse/*[2]/geometry/location/lng");
    lat = latxml.content;
    lon = lonxml.content;
endfunction
