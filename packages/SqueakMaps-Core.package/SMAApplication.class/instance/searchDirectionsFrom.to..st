search
searchDirectionsFrom: aSearchInput to: anotherSearchInput

	| start destination startLocation destinationLocation transportationMode newRoute |
	
	start := aSearchInput.
	destination := anotherSearchInput.
	transportationMode := self transportationModeInput.
	
	(start isEmpty or: [destination isEmpty]) ifTrue: [
		^ self inform: 'Please enter a start and destination location.'].
	
	[startLocation := self navigator locate: start.
	destinationLocation := self navigator locate: destination]
		on: SMALocationNameNotFoundError
		do: [:error | ^ self inform: error userMessage].
	
	(startLocation coordinates = destinationLocation coordinates) ifTrue: [
		^ self informSearchedSameLocation: startLocation].

	[newRoute := self navigator getRouteFrom: startLocation to: destinationLocation by: transportationMode]
		on: SMAGeoServiceError
		do: [:error |
			self mapConfigurator showLocations: { startLocation . destinationLocation }.
			self inform: error userMessage.
			^ self].
	
	self routes add: newRoute.
	self hasSearched: true;
		changed: #buildSidebarTopChildren