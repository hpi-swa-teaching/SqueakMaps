as yet unclassified
getRouteFrom: aQueryString To: anotherQueryString By: aSymbol

	| resultOne resultTwo route |

	resultOne := self locate: aQueryString.	
	resultTwo := self locate: anotherQueryString.

	route := self routingAPI getRouteFrom: (resultOne latLong) To: (resultTwo latLong) By: aSymbol.
	route startLabel: resultOne label.
	route destinationLabel: resultTwo label.
	^ route