building
isSelected: index put: aBoolean

	(selectionList isNil or: [selectionList size ~= self items size]) ifTrue: [
		selectionList := Array
		new: self items size
		withAll: false
	].
	
	selectionList at: index put: aBoolean.
	self visiblePinCategories: self collectSelectedCategories.

	self changed: #items.