as yet unclassified
boundingBoxZoom: bb
	bb ifNil: [^ 19 "Pointlike, so fairly high zoom"].
	^ self zoomForRectangle: (((bb at: 3) asNumber @ (bb at: 1) asNumber) corner: ((bb at: 4) asNumber @ (bb at: 2) asNumber))