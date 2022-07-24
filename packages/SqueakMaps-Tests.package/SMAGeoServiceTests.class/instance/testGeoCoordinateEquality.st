coordinates operations
testGeoCoordinateEquality

	| coordinates1 coordinates2 coordinates3 coordinates4 |
	
	coordinates1 := SMAGeoCoordinate newFrom: 10.123456789 @ 11.123456789.
	coordinates2 := SMAGeoCoordinate newFrom: 10.123456789 @ 11.123456789.
	coordinates3 := SMAGeoCoordinate newFrom: -5.987654321 @ -4.987654321.
	coordinates4 := SMAGeoCoordinate newFrom: -5.987654321 @ 4.987654321.
	
	self assert: coordinates1 = coordinates2.
	self assert: (coordinates1 = coordinates3) not.
	self assert: (coordinates3 = coordinates4) not