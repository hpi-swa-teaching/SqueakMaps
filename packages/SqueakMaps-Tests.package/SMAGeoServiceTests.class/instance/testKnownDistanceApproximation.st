testing
testKnownDistanceApproximation
	"One degree of latitude is roughly 111195 m."

	| north south |

	north := SMAGeoCoordinate newLong: 0 lat: 1.
	south := SMAGeoCoordinate newLong: 0 lat: 0.
	self assert: ((north distanceInMetersTo: south) - 111195) abs < 200
