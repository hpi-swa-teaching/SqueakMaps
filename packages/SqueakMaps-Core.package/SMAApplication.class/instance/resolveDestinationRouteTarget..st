building
resolveDestinationRouteTarget: aRouteTarget

	^ self routingUiModel
		resolveRouteTarget: aRouteTarget
		from: self selectedStartRouteTarget