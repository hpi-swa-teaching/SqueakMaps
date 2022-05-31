building
buildDirectionsDestinationInput: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: {
			self buildDirectionsLabel: aBuilder with: #getDestinationLabel.
			self buildDirectionsInputField: aBuilder withAccessors: #destinationSearchInput and: #destinationSearchInput:};
		frame: (LayoutFrame new
			leftFraction: 0 offset: 0;
			topFraction: 0.2 offset: 0;
			rightFraction: 1 offset: 0;
			bottomFraction: 0.3 offset: 0)