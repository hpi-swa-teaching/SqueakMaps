building
buildDirectionsRouteInformation: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: {
			self 
				buildDirectionsLabel: aBuilder 
				with: #getDistanceLabel 
				byPosition: (0 @ 0 corner: 0.5 @ 1).
			self 
				buildDirectionsLabel: aBuilder 
				with: #getDurationLabel
				byPosition: (0.5 @ 0 corner: 1 @ 1)};
		frame: (0 @ 0.44 corner: 1 @ 0.5);
		yourself