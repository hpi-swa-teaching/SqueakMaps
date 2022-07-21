drawing
duplicateAndDrawMarker: aMarker On: aCanvas

	| leftDuplicateMarker rightDuplicateMarker |

	leftDuplicateMarker := aMarker copy.
	leftDuplicateMarker worldPos: (aMarker worldPos x - 1) @ aMarker worldPos y.

	rightDuplicateMarker := aMarker copy.
	rightDuplicateMarker worldPos: (aMarker worldPos x + 1) @ aMarker worldPos y.

	self drawMarker: aMarker on: aCanvas.
	self drawMarker: leftDuplicateMarker on: aCanvas.
	self drawMarker: rightDuplicateMarker on: aCanvas