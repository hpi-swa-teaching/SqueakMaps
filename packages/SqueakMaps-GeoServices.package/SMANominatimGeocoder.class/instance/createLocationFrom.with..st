searching
createLocationFrom: aJson with: aString

	| name |
	
	Transcript clear.
	name := aJson at: 'name'.
	Transcript show: name; cr.
	name isEmpty ifTrue: [name := aJson at: 'display_name'].
	Transcript show: name; cr.
	name isEmpty ifTrue: [name := aString].
	Transcript show: name; cr.

	^ SMALocation new
		label: name;
		fullLabel: (aJson at: 'display_name' ifAbsent: [aString]);
		coordinates: (self getCoordinatesFrom: aJson);
		boundingBox: (self getBoundingBoxFrom: aJson);
		yourself