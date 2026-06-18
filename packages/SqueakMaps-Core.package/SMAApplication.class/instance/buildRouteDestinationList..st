building
buildRouteDestinationList: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: {
			self buildDirectionsLabel: aBuilder with: #getDestinationLabel byPosition: (0 @ 0 corner: 1 @ 0.25).
			aBuilder pluggableListSpec new
				model: self;
				list: #routeSelectionLabels;
				getIndex: #destinationRouteSelectionIndex;
				setIndex: #destinationRouteSelectionIndex:;
				frame: (0 @ 0.25 corner: 1 @ 1);
				yourself };
		frame: (0 @ 0.24 corner: 1 @ 0.47);
		yourself