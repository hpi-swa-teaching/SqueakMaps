pin management
savePin

	self isSelectedPinSaved ifFalse: [self class savedPins addIfNotPresent: self selectedPin].
	self changed: #buildSearchPinPanelChildren