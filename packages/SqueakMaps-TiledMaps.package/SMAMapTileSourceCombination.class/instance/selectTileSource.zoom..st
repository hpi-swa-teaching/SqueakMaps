searching
selectTileSource: aScaledPosition zoom: aZoom

	^ aZoom < self zoomBMin ifTrue: [tileSourceA] ifFalse: [tileSourceB]