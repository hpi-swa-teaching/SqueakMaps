building
buildSidebar: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self model;
		children: {
			self buildSidebarTop: aBuilder.
			self buildSidebarBottom: aBuilder };
		frame: (0 @ 0 corner: 0.25 @ 1);
		yourself