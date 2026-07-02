building
buildCampusDirectionsDestinationInput: aBuilder

	^ (self buildDirectionsDestinationInput: aBuilder)
		frame: (0 @ 0.42 corner: 1 @ 0.52);
		yourself
