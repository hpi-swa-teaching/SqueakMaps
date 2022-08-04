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
		do: [:error | ^ self inform: error userMessage].
	
	self mapConfigurator clear.
	
	(startLocation coordinates = destinationLocation coordinates) ifTrue: [
		^ self informSearchedSameLocation: startLocation].

	[newRoute := self navigator getRouteFrom: startLocation to: destinationLocation by: transportationMode]
		on: SMAGeoServiceError
		do: [:error |
			self mapConfigurator showLocations: { startLocation . destinationLocation }.
			self inform: error userMessage.
			^ nil].
	
	self mapConfigurator displayRoute: newRoute.
	self route: newRoute;
		hasSearched: true;
		changed: #buildSidebarTopChildren