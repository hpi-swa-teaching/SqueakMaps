search
searchMultipleLocations

	| start destination transportMode route |
	
	start := self startSearchInput.
	destination := self destinationSearchInput.
	transportMode := self transportationModeInput.
	
	(start isEmpty or: [destination isEmpty]) ifTrue: [
		UIManager default inform: 'Please enter a start and destination location.'.
		^ self].
	
	route := self searchManager getRouteFrom: start To: destination By: transportMode.
	self mapConfigurator displayRoute: route.
	self hasSearched: true.
	self changed: #buildSidebarTopChildren