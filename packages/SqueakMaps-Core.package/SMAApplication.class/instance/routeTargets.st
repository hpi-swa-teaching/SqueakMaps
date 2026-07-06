building
routeTargets

	self routingUiModel targetSource: self tiledMapMorph.
	^ self routingUiModel routeTargetsForSelectedPin: self selectedPin
