search
searchMultipleLocations

	(self startSearchInput isEmpty or: [self destinationSearchInput isEmpty]) ifTrue: [
		UIManager default inform: 'Please enter a start and destination location.'.
		^ self].
	self searchManager getRouteFrom: (self startSearchInput) To: (self destinationSearchInput) By: (self transportationModeInput).
	self hasSearched: true.
	self changed: #buildSidebarTopChildren