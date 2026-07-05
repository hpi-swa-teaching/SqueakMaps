building
buildDirectionsStartInput: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: {
			self 
				buildDirectionsLabel: aBuilder 
				with: #getStartLabel 
				byPosition: (0 @ 0 corner: 1 @ 0.5).
			aBuilder pluggableInputFieldSpec new
				model: self;
				getText: #startSearchInput;
				setText: #submitStartSearchInput:;
				editText: #startSearchInput:;
				askBeforeDiscardingEdits: false;
				help: 'Start...';
				frame: (0 @ 0.5 corner: 0.86 @ 1);
				yourself.
			self buildDirectionsStartClearButton: aBuilder
		};
		frame: (0 @ 0.1 corner: 1 @ 0.2);
		yourself