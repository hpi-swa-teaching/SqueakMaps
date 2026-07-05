search
searchDirectionsFrom: startLocation to: destinationLocation

	| newRoute |
	(startLocation coordinates = destinationLocation coordinates) ifTrue: [
		^ self informSearchedSameLocation: startLocation].

	[newRoute :=self navigator getRouteFrom: startLocation to: destinationLocation by: self transportationModeInput]
		on: SMAGeoServiceError
		do: [:error |
			self mapConfigurator showLocations: { startLocation . destinationLocation }.
			^ self inform: error userMessage].
	self addRoute: newRoute