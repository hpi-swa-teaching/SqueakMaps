building directions bar
buildDirectionsWalkButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Walk';
		model: self model;
		action: #switchToModeWalk;
		state: #hasModeWalk;
		help: 'Choose walking as mode of transportation for route calculation.';
		yourself