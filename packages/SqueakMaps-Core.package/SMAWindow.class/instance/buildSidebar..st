building
buildSidebar: aBuilder

	^ aBuilder pluggablePanelSpec new
			model: self;
			children: {
				self buildSidebarTop: aBuilder.
				self buildSidebarBottom: aBuilder};
			frame: (LayoutFrame new
				leftFraction: 0 offset: 0;
				topFraction: 0 offset: 0;
				rightFraction: 0.25 offset: 0;
				bottomFraction: 1 offset: 0;
				yourself);
			yourself