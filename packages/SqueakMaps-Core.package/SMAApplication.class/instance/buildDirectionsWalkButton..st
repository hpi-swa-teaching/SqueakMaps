building
buildDirectionsWalkButton: aBuilder

	^ aBuilder pluggableButtonSpec new
			label: 'Walk';
			model: self;
			action: #switchToModeWalk;
			state: #hasModeWalk;
			help: 'Choose walking as mode of transportation for route calculation.';
			yourself