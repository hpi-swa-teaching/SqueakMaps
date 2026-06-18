building
buildDirectionsGoButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Route berechnen';
		model: self;
		action: #searchDirections;
		help: 'Route zwischen Start und Ziel berechnen.';
		frame: (0 @ 0.48 corner: 1 @ 0.56);
		yourself