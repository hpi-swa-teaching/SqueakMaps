building
buildSearchPinPanel: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #buildSearchPinPanelChildren;
		layout: #vertical;
		frame: (LayoutFrame new
			leftFraction: 0 offset: 0;
			topFraction: 0.1 offset: 0;
			rightFraction: 1 offset: 0;
			bottomFraction: 0.4 offset: 0)