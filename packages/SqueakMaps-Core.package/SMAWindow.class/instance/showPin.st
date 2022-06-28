pin management
showPin

	| index pin |
	
	index := self requestSavedPinSelection.
	index = 0 ifTrue: [^ nil].
	pin := SMAWindow savedPins at: index.
	self setSelectedPin: pin.
	self mapConfigurator displayLocation: pin.
	self changed: #buildSearchPinPanelChildren.