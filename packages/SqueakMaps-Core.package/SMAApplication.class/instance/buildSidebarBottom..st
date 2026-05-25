building
buildSidebarBottom: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #buildSidebarBottomChildren;
		frame: (0 @ 0.8 corner: 1 @ 1);
		yourself