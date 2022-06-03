search
searchMultipleLocations

	(self startSearchInput isEmpty or: [destinationSearchInput isEmpty]) ifTrue: [
		UIManager default inform: 'Please enter a start and destination location.'.
		^ self].
	self tiledMapMorph locate: (self startSearchInput) and: (self destinationSearchInput).
	self changed: #buildSidebarTopChildren