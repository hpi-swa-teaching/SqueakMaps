as yet unclassified
calculateZoomForBoundingBox: aRectangle

	| highZoom |
	
	highZoom := 19.
	aRectangle ifNil: [^ highZoom].

	^ self zoomForRectangle: aRectangle