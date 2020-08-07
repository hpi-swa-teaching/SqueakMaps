as yet unclassified
boundingBoxZoom: boundingBox

	| highZoom rectangle |
	
	highZoom := 19.
	rectangle := (((boundingBox at: 3) asNumber @ (boundingBox first) asNumber) corner: ((boundingBox at: 4) asNumber @ (boundingBox at: 2) asNumber)).
	
	boundingBox ifNil: [^ highZoom].
	^ self zoomForRectangle: rectangle