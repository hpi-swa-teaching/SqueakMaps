locating
locate: aQueryString and: anotherQueryString

	| resultOne resultTwo firstPin secondPin routingAPI boundingBox zoom |

	resultOne := self geocoder locate: aQueryString.	
	resultTwo := self geocoder locate: anotherQueryString.	
	
	(resultOne isEmpty or: [resultTwo isEmpty]) ifTrue: [
		UIManager default inform: 'No results found.'.
		^ self].
	
	firstPin := resultOne first.
	secondPin := resultTwo first.
	
	self center: (self calculateMidPoint: (firstPin worldPos) and: (secondPin worldPos)).

	routingAPI := SMAORSRoutingAPI new.
	routingAPI apiKey: '5b3ce3597851110001cf62480dc81045552b485d90dcd7291f831448'.
	self route: (routingAPI getRouteFrom: (firstPin latLong)  To: (secondPin latLong)).

	boundingBox := self route boundingBox.
	zoom := self geocoder boundingBoxZoom: {
		boundingBox first y .
		boundingBox second y .
		boundingBox first x .
		boundingBox second y}.
	
	self zoom: (self tileSource clampZoom: zoom).
	self pins: (Set newFrom: {firstPin . secondPin}).
	self layoutChanged.
	self changed