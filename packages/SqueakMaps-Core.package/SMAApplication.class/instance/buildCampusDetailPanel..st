building
buildCampusDetailPanel: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #buildCampusDetailPanelChildren;
		layout: #vertical;
		frame: (0 @ 0.66 corner: 1 @ 1);
		yourself