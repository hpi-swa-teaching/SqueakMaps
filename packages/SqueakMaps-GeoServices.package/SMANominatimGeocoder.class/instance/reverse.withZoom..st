searching
reverse: aSMAGeoCoordinate withZoom: aNumber

	| json queryUrl | 
	
	queryUrl := self reverseUrlFor: aSMAGeoCoordinate withZoom: aNumber.
	json := self contentSource getJsonFrom: queryUrl.
	
	(json includesKey: 'error') ifTrue: [
		(SMALocationUnnameableError new
			coordinates: aSMAGeoCoordinate;
			zoomLevel: aNumber;
			messageText: (json at: 'error');
			yourself) signal].
	
	^ SMALocation new
		label: (json at: 'display_name' ifAbsent: [
			aSMAGeoCoordinate lat asString, ', ', aSMAGeoCoordinate long asString]);
		coordinates: aSMAGeoCoordinate;
		boundingBox: (self getBoundingBoxFrom: json);
		yourself