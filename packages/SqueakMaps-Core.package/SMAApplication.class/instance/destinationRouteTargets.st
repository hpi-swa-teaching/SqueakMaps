building
destinationRouteTargets

	self routingUiModel targetSource: self tiledMapMorph.
	^ self routingUiModel
		destinationRouteTargetsForSelectedPin: self selectedPin
