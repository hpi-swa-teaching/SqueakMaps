initialization
initializeGuessing

	self
		roundActive: false;
		mapConfigurator: (SMAMapConfigurator newWith: self tiledMapMorph).
	self tiledMapMorph onClickAction: [:aWorldPos | self placeGuessAt: aWorldPos]
