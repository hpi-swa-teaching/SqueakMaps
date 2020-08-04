as yet unclassified
boundingBoxZoom: bb

	| highZoom |
	highZoom := 19.
	
	bb ifNil: [^ highZoom].
	^ self zoomForRectangle: (((bb at: 3) asNumber @ (bb at: 1) asNumber) corner: ((bb at: 4) asNumber @ (bb at: 2) asNumber))