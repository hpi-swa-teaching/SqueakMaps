searching
locate: aQueryString

	| searches queryUrlString json | 

	searches := OrderedCollection new. 
	queryUrlString := self queryUrlFor: aQueryString.
	json := self contentSource getJsonFrom: queryUrlString.
	
	json do: [:result |
		searches add: (SMALocation new
			label: (result at: 'display_name' ifAbsent: [aQueryString]);
			latLong: ((result at: 'lon') asNumber) @ ((result at: 'lat') asNumber);
			boundingBox: (self getBoundingBoxFrom: result);
			yourself)].
	
	searches ifEmpty: [
		(SMALocationNameNotFoundError new
			requestedName: aQueryString) signal].
	^ searches