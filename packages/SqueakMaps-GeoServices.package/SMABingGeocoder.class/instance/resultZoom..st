as yet unclassified
resultZoom: aJSON

	| bbox highZoom rectangle |

	highZoom := 19.
	bbox := aJSON at: 'bbox' ifAbsent: [^ highZoom].
	rectangle := ((self pointFromArray: bbox xIndex: 2 yIndex: 1) corner: (self pointFromArray: bbox xIndex: 4 yIndex: 3)).
	
	^ self zoomForRectangle: rectangle
