building
buildRouteStartList: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: {
			self buildDirectionsLabel: aBuilder with: #getStartLabel byPosition: (0 @ 0 corner: 1 @ 0.25).
			aBuilder pluggableListSpec new
				model: self;
				list: #routeSelectionLabels;
				getIndex: #startRouteSelectionIndex;
				setIndex: #startRouteSelectionIndex:;
				frame: (0 @ 0.25 corner: 1 @ 1);
				yourself };
		frame: (0 @ 0 corner: 1 @ 0.23);
		yourself