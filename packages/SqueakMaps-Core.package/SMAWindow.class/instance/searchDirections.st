search
searchDirections

	| start destination startLocation destinationLocation transportationMode newRoute |
	
	start := self startSearchInput.
	destination := self destinationSearchInput.
	transportationMode := self transportationModeInput.
	
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

	[newRoute := self searchManager getRouteFrom: startLocation to: destinationLocation by: transportationMode]
		on: Error
		do: [:error | 
				self mapConfigurator displayLocation: startLocation;
					displayLocation: destinationLocation;
					focusLocations: { startLocation . destinationLocation }.
				^ self handleError: error].
	
	self mapConfigurator displayRoute: newRoute.
	self route: newRoute;
		hasSearched: true;
		changed: #buildSidebarTopChildren