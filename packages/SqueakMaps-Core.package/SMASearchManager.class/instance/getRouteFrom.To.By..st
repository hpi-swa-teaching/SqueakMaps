as yet unclassified
getRouteFrom: aQueryString To: anotherQueryString By: aSymbol

	| resultOne resultTwo |

	resultOne := self locate: aQueryString.	
	resultTwo := self locate: anotherQueryString.

	^ self routingApi getRouteFrom: (resultOne latLong) To: (resultTwo latLong) By: aSymbol