as yet unclassified
resultZoom: aJSON

	| bbox highZoom |

	highZoom := 19.
	bbox := aJSON at: 'bbox' ifAbsent: [^ highZoom].
	^ self zoomForRectangle: ((self pointFromArray: bbox xIndex: 2 yIndex: 1) corner: (self pointFromArray: bbox xIndex: 4 yIndex: 3))
