as yet unclassified
isValidZoomLevel: aZoom

	^ (aZoom >= self zoomMin) and: [aZoom <= self zoomMax]