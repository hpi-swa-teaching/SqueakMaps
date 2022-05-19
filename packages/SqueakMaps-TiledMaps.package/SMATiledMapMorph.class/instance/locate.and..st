locating
locate: aQueryString and: anotherQueryString

	| resultOne resultTwo firstPin secondPin newBox newZoom |

	resultOne := geocoder locate: aQueryString.	
	resultTwo := geocoder locate: anotherQueryString.	
	
	(resultOne isEmpty or: [resultTwo isEmpty]) ifTrue: [
		UIManager default inform: 'No results found.'.
		^ self].
	firstPin := resultOne first.
	secondPin := resultTwo first.

	newBox := self getBoundingBoxFitting: firstPin and: secondPin.
	newZoom := geocoder boundingBoxZoom: newBox.
	zoom := tileSource clampZoom: newZoom.

	center := self calculateMidPoint: (firstPin worldPos) and: (secondPin worldPos).
	
	pins := Set with: firstPin.
	pins add: secondPin.
	self layoutChanged.
	self changed