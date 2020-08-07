testing
testWorldPosToLatLong

	| newyorkLatLong newyorkWorldPos computedLatLong precision |
	precision := 0.0000001.
	newyorkLatLong := 40.7127281 @ -74.0060152.
	
	newyorkWorldPos := SMAMapTileLoader latLongToWorldPos: newyorkLatLong.
	computedLatLong := (SMAMapTileLoader worldPosToLatLong: newyorkWorldPos).
	"Since floats are only stored with a limited accuracy in squeak, we need to convert the computed LatLong coordinates to a ScaledDecimal first and only then round"
	computedLatLong := (computedLatLong x asScaledDecimal @ computedLatLong y asScaledDecimal) roundTo: precision.
	self assert: newyorkLatLong equals: computedLatLong
	
	