testing
isModelVisible: aModel

	^ self categoryFilter isNil
		or: [self categoryFilter includes: aModel]