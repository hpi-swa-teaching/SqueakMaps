guessing
placeGuessAt: aWorldPos

	self roundActive ifFalse: [^ self].
	self viewSwapper isMapLarge ifFalse: [^self].
	self currentGuess: (GGGuess coordinates: (SMAMapConfigurator worldPosToGeoCoordinates: aWorldPos)).
	self mapConfigurator clear; displayLocation: self guessLocation.
	self refreshControls
