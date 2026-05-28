building
buildDirectionsOptimalRouteButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Find optimal Route';
		model: self;
		action: #findOptimalRoute;
		help: 'This finds a route in order.';
		frame: (0.5 @ 0.88 corner: 1 @ 1);
		yourself