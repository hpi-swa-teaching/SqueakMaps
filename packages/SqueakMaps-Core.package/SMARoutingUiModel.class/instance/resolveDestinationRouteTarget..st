building
resolveDestinationRouteTarget: aRouteTarget

	^ self
		resolveRouteTarget: aRouteTarget
		from: self selectedStartRouteTarget
