testing
testNilGuessAndDistanceAllowed

	| coord level result |

	coord := SMAGeoCoordinate newLong: 13.1 lat: 52.4.
	level := GGLevel newImagePath: 'a/b.png' coordinates: coord.
	result := GGRoundResult newLevel: level guess: nil distance: nil score: 0.
	self assert: result score equals: 0.
	self assert: result guess isNil.
	self assert: result distanceInMeters isNil
