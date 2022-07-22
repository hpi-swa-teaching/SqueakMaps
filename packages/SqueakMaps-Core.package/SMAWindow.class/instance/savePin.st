pin management
savePin

	self isSelectedPinSaved ifFalse: [SMAWindow savedPins addIfNotPresent: self selectedPin].
	self changed: #buildSearchPinPanelChildren