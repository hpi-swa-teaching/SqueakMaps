search
search

	self startSearchInput isEmpty ifTrue: [
		UIManager default inform: 'Please enter Search Location.'.
		^ self].
	(self startSearchInput notEmpty and: [self destinationSearchInput notEmpty]) ifTrue:[
		self searchMultipleLocations.
		^ self].
	(self startSearchInput notEmpty and: [self destinationSearchInput isEmpty]) ifTrue:[
		self searchLocation.
		^ self]
