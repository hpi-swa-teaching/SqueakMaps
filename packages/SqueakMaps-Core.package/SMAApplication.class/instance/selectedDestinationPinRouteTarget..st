accessing
selectedDestinationPinRouteTarget: aSMALocation

	selectedDestinationPinRouteTarget := aSMALocation
		ifNil: [nil]
		ifNotNil: [
			SMAConcreteRouteTarget
				on: aSMALocation
				label: aSMALocation label]
