category management
isSelected: index put: aBoolean

	(self selectionList isNil or: [self selectionList size ~= self items size]) ifTrue: [
		self selectionList: (Array
		new: self items size
		withAll: false)
	].
	
	self selectionList at: index put: aBoolean.
	self visiblePinCategories: self collectSelectedCategories.
	self clear.
	self changed: #items.