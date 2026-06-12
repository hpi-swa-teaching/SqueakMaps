drawing
drawOn: aCanvas

	| missingLocalTiles |

	aCanvas clipBy: self bounds during: [ :clippedCanvas |
		missingLocalTiles := self drawTilesOn: clippedCanvas.
		self drawRoute: self route On: clippedCanvas.
		self markers do: [:marker | self duplicateAndDrawMarker: marker On: clippedCanvas]].
	missingLocalTiles ifTrue: [self zoomOut]