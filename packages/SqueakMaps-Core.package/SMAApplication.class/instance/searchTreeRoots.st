building
searchTreeRoots

	self searchInput isEmpty ifFalse: [^ self searchResultTreeNodes].
	^ self groupedTreeRoots