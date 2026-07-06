testing
testFactoryInitializesAllFields

	| level guess result |
	level := GGLevel newImagePath: 'level.png' coordinates: (SMAGeoCoordinate newLong: 13 lat: 52).
	guess := SMAGeoCoordinate newLong: 13.1 lat: 52.1.
	result := GGRoundResult newLevel: level guess: guess distance: 42 score: 800.

	self assert: result level == level.
	self assert: result guess == guess.
	self assert: result distanceInMeters equals: 42.
	self assert: result score equals: 800
