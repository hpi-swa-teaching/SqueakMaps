pin management
removePin

	SMAWindow savedPins removeAllSuchThat: [:p | p latLong = self selectedPin latLong].
	self changed: #buildSearchPinPanelChildren.