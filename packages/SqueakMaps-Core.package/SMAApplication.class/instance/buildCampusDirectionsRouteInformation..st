building
buildCampusDirectionsRouteInformation: aBuilder

	^ (self buildDirectionsRouteInformation: aBuilder)
		frame: (0 @ 0.8 corner: 1 @ 0.86);
		yourself
