search
searchMultipleLocations

	(self startSearchInput isEmpty or: [self destinationSearchInput isEmpty]) ifTrue: [
		UIManager default inform: 'Please enter a start and destination location.'.
		^ self].
	self setOpenrouteserviceAsApi.
	self tiledMapMorph hasRoutingApi 
		ifTrue:[self locate: (self startSearchInput) and: (self destinationSearchInput) by: (self transportationModeInput).
				self hasSearched: true].
	self changed: #buildSidebarTopChildren