search
searchDirections

	| start destination startLocation destinationLocation transportationMode newRoute |
	
	start := self startSearchInput.
	destination := self destinationSearchInput.
	transportationMode := self transportationModeInput.
	
	(start isEmpty or: [destination isEmpty]) ifTrue: [
		^ self inform: 'Please enter a start and destination location.'].
	
	[startLocation := self navigator locate: start.
	destinationLocation := self navigator locate: destination]
		on: SMALocationNameNotFoundError
		do: [:error | ^ self informLocationNameNotFound: error requestedName].
	
	self mapConfigurator clear.
	
	(startLocation coordinates = destinationLocation coordinates) ifTrue: [
		^ self informSearchedSameLocation: startLocation].

	[newRoute := self navigator getRouteFrom: startLocation to: destinationLocation by: transportationMode]
		on: Error
		do: [:error | 
				self mapConfigurator showLocations: {startLocation . destinationLocation}.
				^ self handleError: error].
	
	self mapConfigurator displayRoute: newRoute.
	self route: newRoute;
		hasSearched: true;
		changed: #buildSidebarTopChildren