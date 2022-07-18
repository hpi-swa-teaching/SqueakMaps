searching
getRouteFrom: aStartLocation To: aDestinationLocation By: aSymbol

	| route |
	route := self routingAPI getRouteFrom: (aStartLocation latLong) To: (aDestinationLocation latLong) By: aSymbol.
	route startLabel: aStartLocation label.
	route destinationLabel: aDestinationLocation label.
	^ route