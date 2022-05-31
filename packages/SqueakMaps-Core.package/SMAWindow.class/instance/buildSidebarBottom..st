building
buildSidebarBottom: aBuilder

	^ aBuilder pluggablePanelSpec new
			model: self;
			children: {
				self buildSelectAPIButton: aBuilder.
				self buildManageAPIKeysButton: aBuilder.
				self buildPinsButton: aBuilder};
			frame: (LayoutFrame new
				leftFraction: 0 offset: 0;
				topFraction: 0.8 offset: 0;
				rightFraction: 1 offset: 0;
				bottomFraction:1 offset: 0)