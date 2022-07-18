pin management
showPin

	| index location |
	
	index := self requestSavedPinSelection.
	index = 0 ifTrue: [^ nil].
	location := SMAWindow savedPins at: index.
	self switchToSearchViewWith: location.
	self mapConfigurator clear.
	self mapConfigurator displayLocation: location.
	self mapConfigurator focusLocation: location.
	self changed: #buildSearchPinPanelChildren.