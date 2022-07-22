pin management
showPin

	| index location |
	
	index := self requestSavedPinSelection.
	index = 0 ifTrue: [^ nil].
	location := SMAWindow savedPins at: index.
	self switchToSearchViewWith: location.
	self mapConfigurator 
		clear;
		displayLocation: location;
		focusLocation: location.
	self changed: #buildSearchPinPanelChildren