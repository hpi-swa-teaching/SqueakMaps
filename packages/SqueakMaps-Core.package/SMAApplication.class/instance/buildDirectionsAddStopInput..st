building
buildDirectionsAddStopInput: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: {
			self 
				buildDirectionsLabel: aBuilder 
				with: #getAddStopLabel 
				byPosition: (0 @ 0 corner: 1 @ 0.5).
			aBuilder pluggableInputFieldSpec new
				model: self;
				getText: #addStopSearchInput;
				setText: #submitStartSearchInput:;
				editText: #addStopSearchInput:;
				askBeforeDiscardingEdits: false;
				help: 'Add Stop...';
				frame: (0 @ 0.5 corner: 1 @ 1);
				yourself
		};
		frame: (0 @ 0.2 corner: 1 @ 0.3);
		yourself