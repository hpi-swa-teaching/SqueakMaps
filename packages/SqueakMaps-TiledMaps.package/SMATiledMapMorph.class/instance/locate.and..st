locating
locate: aQueryString and: anotherQueryString

	| resultOne resultTwo firstPin secondPin newBox newZoom |

	resultOne := self geocoder locate: aQueryString.	
	resultTwo := self geocoder locate: anotherQueryString.	
	
	(resultOne isEmpty or: [resultTwo isEmpty]) ifTrue: [
		UIManager default inform: 'No results found.'.
		^ self].
	firstPin := resultOne first.
	secondPin := resultTwo first.

	newBox := self getBoundingBoxFitting: firstPin and: secondPin.
	newZoom := self geocoder boundingBoxZoom: newBox.
	self zoom: (self tileSource clampZoom: newZoom).

	self center: (self calculateMidPoint: (firstPin worldPos) and: (secondPin worldPos)).
	
	self route points: {firstPin latLong . secondPin latLong}.
	self pins: (Set with: firstPin).
	self pins add: secondPin.	
	self layoutChanged.
	self changed