category management
resizeSelectionList

	(self selectionList isNil or: [self selectionList size ~= self items size]) ifTrue: [
		self selectionList: (Array
            new: self items size
            withAll: false).
	]