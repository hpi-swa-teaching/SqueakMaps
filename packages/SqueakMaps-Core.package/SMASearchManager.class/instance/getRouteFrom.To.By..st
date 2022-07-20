searching
getRouteFrom: aStartLocation To: aDestinationLocation By: aSymbol

	| route |
	
	route := self routingAPI getRouteFrom: (aStartLocation coordinates) To: (aDestinationLocation coordinates) By: aSymbol.
	route startLabel: aStartLocation label.
	route destinationLabel: aDestinationLocation label.
	^ route