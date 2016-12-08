function [lat, lon]=tspGetCoordFromName(name)
    doc = xmlRead("http://maps.googleapis.com/maps/api/geocode/xml?address=" + name);
    latxml = xmlXPath(doc,"/GeocodeResponse/*[2]/geometry/location/lat");
    lonxml = xmlXPath(doc,"/GeocodeResponse/*[2]/geometry/location/lng");
    lat = strtod(latxml.content);
    lon = strtod(lonxml.content);
endfunction
