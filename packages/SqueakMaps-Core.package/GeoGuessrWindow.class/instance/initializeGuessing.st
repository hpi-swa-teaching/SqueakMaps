initialization
initializeGuessing

	mapIsLarge := false.
	self
		roundActive: false;
		currentGuess: GGNoGuess new;
		mapConfigurator: (SMAMapConfigurator newWith: self tiledMapMorph).
	self tiledMapMorph onClickAction: [:aWorldPos | self placeGuessAt: aWorldPos]
