drawing
duplicateAndDrawMarker: aMarker On: aCanvas
	"Also draw the markers in the neighbouring worlds to the left and right"

	| leftDuplicateMarker rightDuplicateMarker |
	leftDuplicateMarker := aMarker copy worldPos: aMarker worldPos x - 1 @ aMarker worldPos y.
	
	rightDuplicateMarker := aMarker copy worldPos: aMarker worldPos x + 1 @ aMarker worldPos y.
	
	self
		drawMarker: aMarker on: aCanvas;
		drawMarker: leftDuplicateMarker on: aCanvas;
		drawMarker: rightDuplicateMarker on: aCanvas