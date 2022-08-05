testing
testLocationNameNotFound

	| invalidName |
	
	invalidName := 'this-place-does-not-exist'.
	self geocoder contentSource mockGetJsonFromWith: [self nameNotFoundResponse].
	
	self should: [self geocoder locate: invalidName] 
		raise: SMALocationNameNotFoundError
		withExceptionDo: [:error | self assert: error requestedName equals: invalidName]
	
	