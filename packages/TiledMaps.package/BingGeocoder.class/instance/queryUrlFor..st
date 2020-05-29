as yet unclassified
queryUrlFor: queryString
	^ ('http://dev.virtualearth.net/REST/v1/Locations?q=', queryString encodeForHTTP, '&o=json&key=', api apikey) asUrl