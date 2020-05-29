as yet unclassified
isValidZoomLevel: zoom
	^ (zoom >= self zoomMin) and: [zoom <= self zoomMax]