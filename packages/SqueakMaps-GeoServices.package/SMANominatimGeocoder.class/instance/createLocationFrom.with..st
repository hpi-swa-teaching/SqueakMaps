searching
createLocationFrom: aJson with: aString

	^ SMALocation new
		label: (aJson at: 'display_name' ifAbsent: [aString] );
		coordinates: (self getCoordinatesFrom: aJson);
		boundingBox: (self getBoundingBoxFrom: aJson);
		yourself