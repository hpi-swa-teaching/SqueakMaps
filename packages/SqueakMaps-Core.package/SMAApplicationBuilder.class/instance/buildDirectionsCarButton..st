building
buildDirectionsCarButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Car';
		model: self model;
		action: #switchToModeCar;
		state: #hasModeCar;
		help: 'Choose car as mode of transportation for route calculation.';
		yourself