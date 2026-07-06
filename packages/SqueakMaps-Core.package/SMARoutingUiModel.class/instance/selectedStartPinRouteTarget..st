accessing
selectedStartPinRouteTarget: aLocation

	selectedStartPinRouteTarget := aLocation
		ifNil: [nil]
		ifNotNil: [
			SMAConcreteRouteTarget
				on: aLocation
				label: aLocation label]
