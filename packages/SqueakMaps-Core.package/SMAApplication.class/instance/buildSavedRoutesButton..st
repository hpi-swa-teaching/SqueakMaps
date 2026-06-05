building
buildSavedRoutesButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Saved Routes';
		model: self;
		action: #showSavedRoute;
		help: 'Select a previously saved pin.';
		frame: (0.5 @ 0 corner: 1 @ 0.5);
		yourself