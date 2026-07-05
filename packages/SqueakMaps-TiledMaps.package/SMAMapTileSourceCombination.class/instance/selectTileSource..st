searching
selectTileSource: aZoom

	^ aZoom < tileSourceB zoomMin ifTrue: [tileSourceA] ifFalse: [tileSourceB]