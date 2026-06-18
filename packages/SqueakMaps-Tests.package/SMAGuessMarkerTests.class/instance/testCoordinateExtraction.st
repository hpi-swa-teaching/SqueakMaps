testing
testCoordinateExtraction

	| expected |

	expected := SMAMapConfigurator worldPosToGeoCoordinates: 0.5 @ 0.5.
	self window startTimer.
	self window swapViews.
	self window placeGuessAt: 0.5 @ 0.5.
	self assert: expected long equals: self window currentGuess long.
	self assert: expected lat equals: self window currentGuess lat
