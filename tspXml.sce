doc = xmlRead("http://maps.googleapis.com/maps/api/geocode/xml?address=tokyo");
e= xmlAsText(xmlXPath(doc,"//result"))
