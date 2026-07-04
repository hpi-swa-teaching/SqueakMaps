building
buildSearchTopRow: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #horizontal;
		children: {
			self buildSearchInputField: aBuilder };
		frame: (0 @ 0 corner: 1 @ 0.08);
		yourself