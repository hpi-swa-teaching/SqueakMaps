category management
isSelected: index
	"Returns a boolean whether the index-th item of the multi select is chosen"
	
	(self selectionList isNil or: [self selectionList size ~= self items size]) ifTrue: [
		self selectionList: (Array
            new: self items size
            withAll: false).
		].
	^ self selectionList at: index