pin management
removePin

	
	SMAWindow savedPins remove: self selectedPin ifAbsent: [].
	self changed: #buildSearchPinPanelChildren.