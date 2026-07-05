searching
createLocationFrom: aJson with: aString

	| backupName |
	backupName := aJson at: 'display_name' ifAbsent: [aString].
	^ SMALocation new
		label: (aJson at: 'name' ifAbsent: backupName);
		fullLabel: (backupName);
		coordinates: (self getCoordinatesFrom: aJson);
		boundingBox: (self getBoundingBoxFrom: aJson);
		yourself