pin management
savePin

	SMAWindow savedPins addIfNotPresent: self selectedPin.
	self changed: #buildSearchPinPanelChildren.