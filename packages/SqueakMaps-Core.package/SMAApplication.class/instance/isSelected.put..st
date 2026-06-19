category management
isSelected: index put: aBoolean

	(self selectionList isNil or: [self selectionList size ~= self items size]) ifTrue: [
		self selectionList: (Array
		new: self items size
		withAll: false)
	].
	
	self selectionList at: index put: aBoolean.
	(self isSelectedTypePinAt: index)
	ifFalse:[
			self toggleAllPinsForCategoryAt: index
		].
	self visiblePins: self collectSelectedVisiblePins.
	self clear.
	self changed: #items.