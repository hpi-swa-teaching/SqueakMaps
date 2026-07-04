accessing
availableLevels: aCollection

	availableLevels := aCollection asSet asSortedCollection.
	self changed: #availableLevels
