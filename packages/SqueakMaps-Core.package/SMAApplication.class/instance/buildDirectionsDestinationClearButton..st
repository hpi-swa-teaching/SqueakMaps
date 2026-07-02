building
buildDirectionsDestinationClearButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'X';
		model: self;
		action: #clearDestinationSearchInput;
		help: 'Zielfeld leeren.';
		frame: (0.88 @ 0.5 corner: 1 @ 1);
		yourself