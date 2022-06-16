building
buildDirectionsWalkButton: aBuilder

	^ aBuilder pluggableButtonSpec new
			label: 'Walk';
			model: self;
			action: #switchToModeWalk;
			help: 'Choose walking as mode of transportation for route calculation.';
			yourself