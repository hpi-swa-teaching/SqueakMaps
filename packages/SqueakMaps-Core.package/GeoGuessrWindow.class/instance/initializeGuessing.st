initialization
initializeGuessing

	mapIsLarge := false.
	self
		roundActive: false;
		mapConfigurator: (SMAMapConfigurator newWith: self tiledMapMorph).
	self tiledMapMorph onClickAction: [:aWorldPos | self placeGuessAt: aWorldPos]
