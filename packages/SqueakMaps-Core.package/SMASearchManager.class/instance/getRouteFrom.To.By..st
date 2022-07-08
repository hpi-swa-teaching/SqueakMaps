searching
getRouteFrom: aQueryString To: anotherQueryString By: aSymbol

	| startPin destinationPin route |

	startPin := self locate: aQueryString.	
	destinationPin := self locate: anotherQueryString.

	route := self routingAPI getRouteFrom: (startPin latLong) To: (destinationPin latLong) By: aSymbol.
	route startLabel: startPin label.
	route destinationLabel: destinationPin label.
	^ route