building
buildDirectionsTopRow: aBuilder

	^ aBuilder pluggablePanelSpec new
			model: self;
			spacing: -1;
			layout: #horizontal;
			children: {
				self buildDirectionsCarButton: aBuilder .
				self buildDirectionsBikeButton: aBuilder .
				self buildDirectionsWalkButton: aBuilder .
				aBuilder pluggableSpacerSpec new .
				self buildDirectionsCancelButton: aBuilder};
			frame: (LayoutFrame new
				leftFraction: 0 offset: 0;
				topFraction: 0 offset: 0;
				rightFraction: 1 offset: 0;
				bottomFraction: 0.08 offset: 0;
				yourself);
			yourself