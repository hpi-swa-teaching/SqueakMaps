accessing
selectedDestinationPinRouteTarget: aLocation

	selectedDestinationPinRouteTarget := aLocation
		ifNil: [nil]
		ifNotNil: [
			SMAConcreteRouteTarget
				on: aLocation
				label: aLocation label]
