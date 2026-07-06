testing
testGeoCoordinatePointConversionAndHash

	| coordinate equalCoordinate |
	coordinate := SMAGeoCoordinate newLong: 13.25 lat: 52.5.
	equalCoordinate := SMAGeoCoordinate newFrom: 13.25 @ 52.5.

	self assert: coordinate convertToPoint equals: 13.25 @ 52.5.
	self assert: coordinate equals: equalCoordinate.
	self assert: coordinate hash equals: equalCoordinate hash
