building
buildSearchFurtherInformationRow: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		children: {
			self buildPinInformationLabel: aBuilder with: #getPinInformationLabel.
			aBuilder pluggableSpacerSpec new.
			self buildSearchGoToDirectionsButton: aBuilder.
			};
		frame: (LayoutFrame new
			leftFraction: 0 offset: 0;
			topFraction: 0.1 offset: 0;
			rightFraction: 1 offset: 0;
			bottomFraction: 0.1 offset: 0)