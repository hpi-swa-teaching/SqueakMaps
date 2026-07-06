testing
testMapLocationMarkerAccessorsAndWorldPosition

	| marker latLong |
	latLong := 13 @ 52.
	marker := SMAMapLocationMarker new
		latLong: latLong;
		zoom: 17;
		label: 'HPI';
		color: Color blue;
		yourself.

	self assert: marker latLong equals: latLong.
	self assert: marker zoom equals: 17.
	self assert: marker label equals: 'HPI'.
	self assert: marker color equals: Color blue.
	self assert: marker worldPos equals: (SMAMapTileLoader latLongToWorldPos: latLong)
