as yet unclassified
resultZoom: r
	| bbox |
	bbox := r at: 'bbox' ifAbsent: [^ 19 "Pointlike, so fairly high zoom"].
	^ self zoomForRectangle: ((self pointFromArray: bbox xIndex: 2 yIndex: 1) corner: (self pointFromArray: bbox xIndex: 4 yIndex: 3))
