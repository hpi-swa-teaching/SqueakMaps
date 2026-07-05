accessing
colorOfSegment: aSegment forRoute: aRouteLine

	^ (self routeSegmentIsVisible: aSegment third)
		ifTrue: [aRouteLine visibleColor]
		ifFalse: [aRouteLine hiddenColor]