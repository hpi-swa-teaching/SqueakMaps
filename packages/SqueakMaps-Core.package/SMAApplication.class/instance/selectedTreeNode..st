building
selectedTreeNode: aNode

	aNode ifNil: [^ self].
	aNode target ifNil: [
		aNode hasChildren ifTrue: [self toggleCategoryFilterFor: aNode].
		^ self].
	self clearCategoryFilter.
	self selectTreeTarget: aNode target