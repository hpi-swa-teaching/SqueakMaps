building
buildSidebarBottom: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: {
			self buildSelectAPIButton: aBuilder .
			self buildManageAPIKeysButton: aBuilder .
			self buildPinsButton: aBuilder };
		frame: (0 @ 0.8 corner: 1 @ 1);
		yourself