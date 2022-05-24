locating
locate: aQueryString and: anotherQueryString

	| resultOne resultTwo firstPin secondPin |

	resultOne := self geocoder locate: aQueryString.	
	resultTwo := self geocoder locate: anotherQueryString.	
	
	(resultOne isEmpty or: [resultTwo isEmpty]) ifTrue: [
		UIManager default inform: 'No results found.'.
		^ self].
	
	firstPin := resultOne first.
	secondPin := resultTwo first.
	self zoom: (self getZoomFrom: firstPin and: secondPin).
	self center: (self calculateMidPoint: (firstPin worldPos) and: (secondPin worldPos)).
	
	self route points: {firstPin latLong . secondPin latLong}.
	self pins: (Set newFrom: {firstPin . secondPin}).
	self layoutChanged.
	self changed