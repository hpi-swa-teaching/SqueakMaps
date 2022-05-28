building
buildMap: aBuilder

	^ aBuilder pluggablePanelSpec new
			model: self;
			children: #getMapMorph;
			frame: (LayoutFrame new
				leftFraction: 0.25 offset: 0;
				topFraction: 0 offset: 0;
				rightFraction: 1 offset: 0;
				bottomFraction: 1 offset: 0)