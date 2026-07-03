building
buildDirectionsRemoveHopButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Remove Hop';
		model: self model;
		action: #removeHop;
		help: 'Click here to add a hop to your route.';
		frame: (0.66 @ 0.23 corner: 1 @ 0.33);
		yourself