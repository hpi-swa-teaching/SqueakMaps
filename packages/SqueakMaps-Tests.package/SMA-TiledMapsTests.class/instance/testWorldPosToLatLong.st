as yet unclassified
testWorldPosToLatLong

	| newyorkLatLong newyorkWorldPos |
	
	newyorkLatLong := 40.7127281 @ -74.0060152.
	
	newyorkWorldPos := MapTileLoader  latLongToWorldPos: newyorkLatLong.
	self assert: newyorkLatLong equals: (MapTileLoader worldPosToLatLong: newyorkWorldPos).
	
	