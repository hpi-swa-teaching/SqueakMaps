pin management
removePin

	SMAWindow savedPins removeAllSuchThat: [:p | p coordinates = self selectedPin coordinates].
	self changed: #buildSearchPinPanelChildren