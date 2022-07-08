searching
reverse: aLatLong withZoom: aZoom

	| json queryUrl | 
	queryUrl := self reverseUrlFor: aLatLong withZoom: aZoom.
	json := self contentSource getJsonFrom: queryUrl.

	^ SMALocation new
		label: (json at: 'display_name' ifAbsent: ['Nix Display name']);
		latLong: aLatLong;
		boundingBox: (self getBoundingBoxFrom: json);
		yourself