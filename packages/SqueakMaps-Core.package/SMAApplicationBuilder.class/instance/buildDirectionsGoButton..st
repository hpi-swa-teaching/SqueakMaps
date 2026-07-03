building
buildDirectionsGoButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Go';
		model: self model;
		action: #searchDirections;
		help: 'This finds a route in order.';
		frame: (0 @ 0.88 corner: 0.5 @ 1);
		yourself