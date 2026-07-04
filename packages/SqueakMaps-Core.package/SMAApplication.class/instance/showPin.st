pin management
showPin

	| index location |
	self class savedPins isEmpty ifTrue: [ ^ self  inform: 'No pins saved.'].
	index := self requestSavedPinSelection.
	"Pressed cancel"
	index = 0 ifTrue: [^ self].
	location := self class savedPins at: index.
	self switchToSearchViewWith: location;
		clear.
	self displayPin: location.
	self changed: #buildSearchPinPanelChildren