testing
testAccessors

	| coord level result |

	coord := SMAGeoCoordinate newLong: 13.1 lat: 52.4.
	level := GGLevel newImagePath: 'a/b.png' coordinates: coord.
	result := GGRoundResult newLevel: level guess: coord distance: 250 score: 75.
	self assert: result level equals: level.
	self assert: result guess equals: coord.
	self assert: result distanceInMeters equals: 250.
	self assert: result score equals: 75
