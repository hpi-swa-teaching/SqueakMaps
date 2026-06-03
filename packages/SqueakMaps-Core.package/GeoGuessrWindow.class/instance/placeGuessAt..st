guessing
placeGuessAt: aWorldPos

	self roundActive ifFalse: [^ self].
	self currentGuess: (SMAMapConfigurator worldPosToGeoCoordinates: aWorldPos).
	self mapConfigurator clear; displayLocation: self guessLocation
