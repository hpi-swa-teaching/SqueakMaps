searching
locate: aQueryString

	| searches queryUrlString json coordinates | 

	searches := OrderedCollection new. 
	queryUrlString := self queryUrlFor: aQueryString.
	json := self contentSource getJsonFrom: queryUrlString.
	
	searches := json collect: [:result |
		coordinates := SMAGeoCoordinate 
			newLong: (result at: 'lon') asNumber 
			lat: (result at: 'lat') asNumber.

		(SMALocation new
			label: (result at: 'display_name' ifAbsent: [aQueryString]);
			coordinates: coordinates;
			boundingBox: (self getBoundingBoxFrom: result);
			yourself)].
	
	searches ifEmpty: [
		(SMALocationNameNotFoundError new
			requestedName: aQueryString) signal].

	^ searches