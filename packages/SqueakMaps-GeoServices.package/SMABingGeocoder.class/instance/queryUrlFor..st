as yet unclassified
queryUrlFor: aQueryString

	^ ('http://dev.virtualearth.net/REST/v1/Locations?q=', aQueryString encodeForHTTP, '&o=json&key=', api apikey) asUrl