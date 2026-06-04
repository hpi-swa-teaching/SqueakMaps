search
searchDirectionsFrom: aLocation to: anotherLocation

	| startLocation destinationLocation transportationMode newRoute |
	
	startLocation := aLocation.
	destinationLocation := anotherLocation.
	transportationMode := self transportationModeInput.
	
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