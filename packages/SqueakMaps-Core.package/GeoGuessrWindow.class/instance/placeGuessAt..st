guessing
placeGuessAt: aWorldPos

	self roundActive ifFalse: [^ self].
	mapIsLarge ifFalse: [^self].
	self currentGuess: (GGGuess coordinates: (SMAMapConfigurator worldPosToGeoCoordinates: aWorldPos)).
	self mapConfigurator clear; displayLocation: self guessLocation.
	self refreshControls
