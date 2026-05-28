building
buildDirectionsAddHopButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Add Hop';
		model: self;
		action: #addHopSearchInput;
		help: 'Click here to add a hop to your route.';
		frame: (0 @ 0.23 corner: 1 @ 0.33);
		yourself