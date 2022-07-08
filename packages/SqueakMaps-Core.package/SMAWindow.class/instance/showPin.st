pin management
showPin

	| index location |
	
	index := self requestSavedPinSelection.
	index = 0 ifTrue: [^ nil].
	location := SMAWindow savedPins at: index.
	self setSelectedPin: location.
	self mapConfigurator displayLocation: location.
	self changed: #buildSearchPinPanelChildren.