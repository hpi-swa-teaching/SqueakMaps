building
selectedTreeNode: aNode

	aNode ifNil: [^ self].
	aNode target ifNil: [^ self].
	self selectTreeTarget: aNode target