category management
isSelected: index put: aBoolean

	self resizeSelectionList.
	self selectionList at: index put: aBoolean.
	(self isSelectedTypePinAt: index)
	ifFalse:[ self toggleAllPinsForCategoryAt: index ].
	self visiblePins: self collectSelectedVisiblePins.
	self clear.
	self changed: #items.