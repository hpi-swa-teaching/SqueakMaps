as yet unclassified
reverse: aLatLong withZoom: aZoom

	| json queryUrl | 
	queryUrl := self reverseUrlFor: aLatLong withZoom: aZoom.
	json := self contentSource getJsonFrom: queryUrl.

	^ SMAPin new
			label: (json at: 'display_name' ifAbsent: ['Nix Display name']);
			latLong: ((json at: 'lon') asNumber) @ ((json at: 'lat') asNumber);
			boundingBox: (self getBoundingBoxFrom: json);
			yourself