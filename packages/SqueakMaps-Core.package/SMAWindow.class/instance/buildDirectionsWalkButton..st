building
buildDirectionsWalkButton: aBuilder

	^ aBuilder pluggableButtonSpec new
			label: 'Walk';
			model: self;
			help: 'Choose walking as mode of transportation for route calculation.';
			frame: (0.6@0 corner: 0.9@1);
			yourself.