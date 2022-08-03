url
queryUrlFrom: aStartGeoCoordinate to: anEndGeoCoordinate by: aString

	| formatStart formatEnd |
	
	formatStart := self parseCoordinatesToString: aStartGeoCoordinate.
	formatEnd := self parseCoordinatesToString: anEndGeoCoordinate.
	
	^ ('https://api.openrouteservice.org/v2/directions/', aString, '?api_key=', self class apiKey, '&start=', formatStart, '&end=', formatEnd) asUrl