pin management
removePin

	self class savedPins removeAllSuchThat: [:p | p coordinates = self selectedPin coordinates].
	self changed: #buildSearchPinPanelChildren