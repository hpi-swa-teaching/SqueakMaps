testing
testTiledMapPureInteractionState

	| map marker action route |
	map := SMATiledMapMorph new.
	self assert: map defaultZoom equals: 10.
	self assert: (map clampCoordinateOverflow: -0.25) equals: 0.75.
	self assert: (map clampCoordinateOverflow: 1.25) equals: 0.25.
	self assert: (map clampCoordinateOverflow: 0.4) equals: 0.4.
	self assert: map markers isEmpty.

	marker := SMAMarker new.
	map addMarker: marker.
	self assert: (map markers includes: marker).
	action := [:point | point].
	map onClickAction: action.
	map onDoubleClickAction: action.
	self assert: map onClickAction == action.
	self assert: map onDoubleClickAction == action.
	self assert: (map handlesMouseWheel: nil).
	route := SMARouteLine new.
	map route: route.
	self assert: map route == route.
	self assert: (map colorOfSegment: nil forRoute: route) equals: route visibleColor
