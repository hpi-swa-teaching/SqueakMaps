building
addHopSearchInput: aText

	hopSearchInputs at: #hopsCounter put: (aText asString).
	self increaseHopsCounter.
	self changed: #hopSearchInputs.
