building
buildDirectionsGoButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Go';
		model: self;
		action: #searchDirections;
		help: 'Click here to get the route from one point to another.';
		frame: (0 @ 0.32 corner: 1 @ 0.42);
		yourself