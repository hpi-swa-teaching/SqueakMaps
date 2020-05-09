as yet unclassified
queryUrlFor: queryString
	^ ('https://maps.googleapis.com/maps/api/geocode/json?sensor=false&address=', queryString encodeForHTTP, '&key=', api apikey) asUrl
