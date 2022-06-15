building
buildDirectionsStartInput: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: {
			self 
				buildDirectionsLabel: aBuilder 
				with: #getStartLabel 
				byPosition: (0 @ 0 corner: 1 @ 0.5) .
			self buildDirectionsInputField: aBuilder withAccessors: #startSearchInput and: #startSearchInput:};
		frame: (LayoutFrame new
			leftFraction: 0 offset: 0;
			topFraction: 0.1 offset: 0;
			rightFraction: 1 offset: 0;
			bottomFraction: 0.2 offset: 0)