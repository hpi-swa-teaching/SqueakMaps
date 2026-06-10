searching
reverse: aSMAGeoCoordinate withZoom: aNumber

	| json queryUrl backupName | 
	
	queryUrl := self reverseUrlFor: aSMAGeoCoordinate withZoom: aNumber.
	json := self contentSource getJsonFrom: queryUrl.
	
	(json includesKey: 'error') ifTrue: [
		(SMALocationUnnameableError new
			coordinates: aSMAGeoCoordinate;
			messageText: (json at: 'error');
			yourself) signal].
	
	backupName := (json at: 'display_name' ifAbsent: [
			aSMAGeoCoordinate toStringLatLong]).
	
	^ SMALocation new
		label: (json at: 'name' ifAbsent: [
			aSMAGeoCoordinate toStringLatLong]);
		fullLabel: backupName;
		coordinates: aSMAGeoCoordinate;
		boundingBox: (self getBoundingBoxFrom: json);
		yourself