url
queryUrlFrom: aStartGeoCoordinate To: anEndGeoCoordinate By: aString

	| formatStart formatEnd |
	
	formatStart := self parseCoordinatesToString: aStartGeoCoordinate.
	formatEnd := self parseCoordinatesToString: anEndGeoCoordinate.
	
	^ ('https://api.openrouteservice.org/v2/directions/', aString, '?api_key=', SMAORSRoutingAPI ApiKey, '&start=', formatStart, '&end=', formatEnd) asUrl