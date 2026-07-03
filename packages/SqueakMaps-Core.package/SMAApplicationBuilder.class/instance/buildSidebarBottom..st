building
buildSidebarBottom: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self model;
		children: #buildSidebarBottomChildren;
		frame: (0 @ 0.9 corner: 1 @ 1);
		yourself