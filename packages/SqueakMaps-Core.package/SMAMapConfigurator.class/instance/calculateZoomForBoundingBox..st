as yet unclassified
calculateZoomForBoundingBox: aCollectionOfPoints

	| firstCorner secondCorner highZoom rectangle |
	
	highZoom := 19.
	aCollectionOfPoints ifNil: [^ highZoom].
	
	"bbox first y .
	bbox second y .
	bbox first x .
	bbox second y"
	
	firstCorner := (aCollectionOfPoints at: 3) asNumber @ (aCollectionOfPoints first) asNumber.
	secondCorner := (aCollectionOfPoints at: 4) asNumber @ (aCollectionOfPoints at: 2) asNumber.
	rectangle := firstCorner corner: secondCorner.
	
	^ self zoomForRectangle: rectangle