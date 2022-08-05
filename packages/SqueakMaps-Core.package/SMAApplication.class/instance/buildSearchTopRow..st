building
buildSearchTopRow: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #horizontal;
		children: {
			self buildSearchInputField: aBuilder .
			aBuilder pluggableSpacerSpec new .
			self buildSearchGoButton: aBuilder};
		frame: (LayoutFrame new
			leftFraction: 0 offset: 0;
			topFraction: 0 offset: 0;
			rightFraction: 1 offset: 0;
			bottomFraction: 0.08 offset: 0);
		yourself