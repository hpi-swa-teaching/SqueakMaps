building
buildSidebarTop: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self model;
		children: #buildSidebarTopChildren;
		frame: (0 @ 0 corner: 1 @ 0.897);
		yourself