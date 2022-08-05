pin management
showPin

	| index location |
	
	index := self requestSavedPinSelection.
	index = 0 ifTrue: [^ self inform: 'No pins saved.'].
	location := SMAApplication savedPins at: index.
	self switchToSearchViewWith: location.
	self mapConfigurator 
		clear;
		displayLocation: location;
		focusLocation: location.
	self changed: #buildSearchPinPanelChildren