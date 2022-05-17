testing
testWorldPosToLongLat

	| newyorkLongLat newyorkWorldPos computedLongLat precision |
	
	precision := 0.0000001.
	newyorkLongLat :=  -74.0060152@40.7127281.
	
	newyorkWorldPos := SMAMapTileLoader longLatToWorldPos: newyorkLongLat.
	computedLongLat := (SMAMapTileLoader worldPosToLongLat: newyorkWorldPos).
	"Since floats are only stored with a limited accuracy in squeak, 
	we need to convert the computed LatLong coordinates to a ScaledDecimal first and only then round"
	computedLongLat := (computedLongLat x asScaledDecimal @ computedLongLat y asScaledDecimal) roundTo: precision.
	
	self assert: newyorkLongLat equals: computedLongLat
	
	