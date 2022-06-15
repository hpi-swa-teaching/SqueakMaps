building
buildDirectionsRouteInformation: aBuilder

	^ aBuilder pluggablePanelSpec new
			model: self;
			children: {
				self 
					buildDirectionsLabel: aBuilder 
					with: #getDistanceLabel 
					byPosition: (0 @ 0 corner: 0.5 @ 1) .
				self 
					buildDirectionsLabel: aBuilder 
					with: #getDurationLabel
					byPosition: (0.5 @ 0 corner: 1 @ 1)};
			frame: (LayoutFrame new
				leftFraction: 0 offset: 0;
				topFraction: 0.44 offset: 0;
				rightFraction: 1 offset: 0;
				bottomFraction: 0.5 offset: 0)