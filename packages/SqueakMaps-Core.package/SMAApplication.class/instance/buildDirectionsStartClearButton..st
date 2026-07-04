building
buildDirectionsStartClearButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'X';
		model: self;
		action: #clearStartSearchInput;
		help: 'Startfeld leeren.';
		frame: (0.88 @ 0.5 corner: 1 @ 1);
		yourself