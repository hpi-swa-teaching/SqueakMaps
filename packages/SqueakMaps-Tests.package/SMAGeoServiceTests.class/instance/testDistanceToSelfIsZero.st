testing
testDistanceToSelfIsZero

	| coordinate |

	coordinate := SMAGeoCoordinate newLong: 13.13 lat: 52.39.
	self assert: (coordinate distanceInMetersTo: coordinate) equals: 0
