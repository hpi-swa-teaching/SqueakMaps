building
resolveDestinationRouteTarget: aRouteTarget

	(self isPOITypeRouteTarget: aRouteTarget) ifFalse: [^ aRouteTarget].
	^ self
		nearestPOIOfClass: (aRouteTarget at: 2)
		from: self selectedStartRouteTarget