searching
reverse: aLatLong withZoom: aZoom

	| json queryUrl | 
	
	queryUrl := self reverseUrlFor: aLatLong withZoom: aZoom.
	json := self contentSource getJsonFrom: queryUrl.
	
	(json includesKey: 'error') ifTrue: [
		(SMALocationUnnameableError new
			coordinates: aLatLong;
			zoomLevel: aZoom;
			messageText: (json at: 'error');
			yourself) signal].

	^ SMALocation new
		label: (json at: 'display_name' ifAbsent: [aLatLong y asString, ', ', aLatLong x asString]);
		latLong: aLatLong;
		boundingBox: (self getBoundingBoxFrom: json);
		yourself