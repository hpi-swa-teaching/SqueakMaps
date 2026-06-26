building
buildDirectionsAddSelectedPinButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Add Pin';
		model: self;
		action: #addSelectedPin;
		help: 'Click here to add a hop to your route.';
		frame: (0.33 @ 0.23 corner: 0.66 @ 0.33);
		yourself