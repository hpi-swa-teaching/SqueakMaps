building
buildSearchPinPanel: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #buildSearchPinPanelChildren;
		layout: #vertical;
		frame: (0 @ 0.1 corner: 1 @ 0.4);
		yourself