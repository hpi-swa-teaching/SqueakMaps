building
buildSidebarTop: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #buildSidebarTopChildren;
		frame: (0 @ 0 corner: 1 @ 0.8);
		yourself