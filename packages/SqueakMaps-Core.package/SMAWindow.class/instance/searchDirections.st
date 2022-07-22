search
searchDirections

	| start destination startLocation destinationLocation transportMode route |
	
	start := self startSearchInput.
	destination := self destinationSearchInput.
	transportMode := self transportationModeInput.
	
	(start isEmpty or: [destination isEmpty]) ifTrue: [
		^ self inform: 'Please enter a start and destination location.'].
	
	[startLocation := self searchManager locate: start.
	destinationLocation := self searchManager locate: destination]
		on: SMALocationNameNotFoundError
		do: [:error | ^ self informLocationNameNotFound: error requestedName].
	
	self mapConfigurator clear.
	
	(startLocation coordinates = destinationLocation coordinates) ifTrue: [
		self mapConfigurator displayLocation: startLocation.
		self mapConfigurator focusLocation: startLocation.
		^ self inform: 'Start and Destination Location are the same.'].

	[route := self searchManager getRouteFrom: startLocation to: destinationLocation by: transportMode.]
		on: Error
		do: [:error | 
				self mapConfigurator displayLocation: startLocation;
					displayLocation: destinationLocation;
					focusLocations: { startLocation . destinationLocation }.
					
				^ self handleError: error].
	
	self mapConfigurator displayRoute: route.
	self route: route;
		hasSearched: true;
		changed: #buildSidebarTopChildren