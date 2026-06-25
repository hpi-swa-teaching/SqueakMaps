as yet unclassified
testDistanceOfTwoPoints

	| d pointA pointB |
	pointA := SMAPoint new
		lat: 52.3931856;
		lon: 13.1301124.
	pointB := SMAPoint new
		lat: 52.39364;
		lon: 13.1300581.
	d := pointA distanceTo: pointB.
	self assert: (d - 50.75) abs < 0.1