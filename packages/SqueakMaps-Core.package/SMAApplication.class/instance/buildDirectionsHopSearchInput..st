building
buildDirectionsHopSearchInput: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: {
			self 
				buildDirectionsLabel: aBuilder 
				with: #getAddHopLabel 
				byPosition: (0 @ 0 corner: 1 @ 0.5).
			aBuilder pluggableInputFieldSpec new
				model: self;
				getText: #hopSearchInput;
				setText: #submitHopSearchInput:;
				editText: #hopSearchInput:;
				askBeforeDiscardingEdits: false;
				help: 'Add Hop...';
				frame: (0 @ 0.5 corner: 1 @ 1);
				yourself
		};
		frame: (0 @ 0.1 corner: 1 @ 0.2);
		yourself