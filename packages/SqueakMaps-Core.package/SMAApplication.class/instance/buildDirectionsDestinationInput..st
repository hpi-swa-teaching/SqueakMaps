building
buildDirectionsDestinationInput: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: {
			self 
				buildDirectionsLabel: aBuilder 
				with: #getDestinationLabel 
				byPosition: (0 @ 0 corner: 1 @ 0.5).
			aBuilder pluggableInputFieldSpec new
				model: self;
				getText: #destinationSearchInput;
				setText: #submitDestinationSearchInput:;
				editText: #destinationSearchInput:;
				askBeforeDiscardingEdits: false;
				help: 'Destination...';
				frame: (0 @ 0.5 corner: 1 @ 1);
				yourself
		};
		frame: (LayoutFrame new
			leftFraction: 0 offset: 0;
			topFraction: 0.2 offset: 0;
			rightFraction: 1 offset: 0;
			bottomFraction: 0.3 offset: 0;
			yourself);
		yourself