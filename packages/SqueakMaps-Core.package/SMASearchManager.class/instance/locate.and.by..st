as yet unclassified
locate: aQueryString and: anotherQueryString by: aSymbol

	| resultsOne resultsTwo firstResult secondResult boundingBox zoom |

	resultsOne := self geocoder locate: aQueryString.	
	resultsTwo := self geocoder locate: anotherQueryString.

	(resultsOne isEmpty or: [resultsTwo isEmpty]) ifTrue: [
		UIManager default inform: 'No results found.'.
		^ self].

	firstResult := resultsOne first.
	secondResult := resultsTwo first.

	^ self routingApi getRouteFrom: (firstResult latLong) To: (secondResult latLong) By: aSymbol.



	"self tiledMapMorph center: (self tiledMapMorph calculateMidPoint: (firstResult worldPos) and: (secondResult worldPos)).
	self tiledMapMorph route: (self tiledMapMorph routingApi getRouteFrom: (firstResult latLong)  To: (secondResult latLong) By: aSymbol).

	boundingBox := self tiledMapMorph route boundingBox.
	zoom := self geocoder boundingBoxZoom: {
		boundingBox first y .
		boundingBox second y .
		boundingBox first x .
		boundingBox second y}.
	
	self tiledMapMorph zoom: (self tiledMapMorph tileSource clampZoom: zoom).
	
	self tiledMapMorph removeAllMarkers.
	self tiledMapMorph placeMarkerAt: firstResult latLong labeled: firstResult label.
	self tiledMapMorph placeMarkerAt: secondResult latLong labeled: secondResult label.
	
	self tiledMapMorph layoutChanged.
	self tiledMapMorph changed"