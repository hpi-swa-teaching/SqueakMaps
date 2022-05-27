as yet unclassified
queryUrlFrom: aStartLongLat To: anEndLongLat By: aString

	| formatStart formatEnd |
	
	formatStart := self parseCoordinatesToString: aStartLongLat.
	formatEnd := self parseCoordinatesToString: anEndLongLat.
	
	^ ('https://api.openrouteservice.org/v2/directions/', aString, '?api_key=', self apiKey, '&start=', formatStart, '&end=', formatEnd) asUrl.