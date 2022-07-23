searching
reverse: aSMAGeoCoordinate withZoom: aNumber

	| json queryUrl | 
	
	queryUrl := self reverseUrlFor: aSMAGeoCoordinate withZoom: aNumber.
	json := self contentSource getJsonFrom: queryUrl.
	
	(json includesKey: 'error') ifTrue: [
		(SMALocationUnnameableError new
			coordinates: aSMAGeoCoordinate;
			messageText: (json at: 'error');
			yourself) signal].

	^ SMALocation new
		label: (json at: 'display_name' ifAbsent: [
			aSMAGeoCoordinate toStringLatLong]);
		coordinates: aSMAGeoCoordinate;
		boundingBox: (self getBoundingBoxFrom: json);
		yourself