building
buildCampusDetailPanel: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #buildCampusDetailPanelChildren;
		layout: #vertical;
		frame: (0 @ 0.1 corner: 1 @ 0.45);
		yourself