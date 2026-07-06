accessing
selectedStartPinRouteTarget: aSMALocation

	selectedStartPinRouteTarget := aSMALocation
		ifNil: [nil]
		ifNotNil: [
			SMAConcreteRouteTarget
				on: aSMALocation
				label: aSMALocation label]
