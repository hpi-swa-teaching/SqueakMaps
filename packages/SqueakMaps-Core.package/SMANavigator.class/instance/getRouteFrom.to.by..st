searching
getRouteFrom: aStartLocation to: aDestinationLocation by: aSymbol

	| route |
	
	route := self routingAPI getRouteFrom: (aStartLocation coordinates) to: (aDestinationLocation coordinates) by: aSymbol.
	route 
		startLabel: aStartLocation label;
		destinationLabel: aDestinationLocation label.
	^ route