searching
locate: aQueryString

	| searches queryUrlString json coordinates | 

	searches := OrderedCollection new. 
	queryUrlString := self queryUrlFor: aQueryString.
	json := self contentSource getJsonFrom: queryUrlString.
	
	json do: [:result |
		coordinates := SMAGeoCoordinate newLong: (result at: 'lon') asNumber Lat: (result at: 'lat') asNumber.
		
		searches add: (SMALocation new
			label: (result at: 'display_name' ifAbsent: [aQueryString]);
			coordinates: coordinates;
			boundingBox: (self getBoundingBoxFrom: result);
			yourself)].
	
	searches ifEmpty: [
		(SMALocationNameNotFoundError new
			requestedName: aQueryString) signal].
	
	^ searches