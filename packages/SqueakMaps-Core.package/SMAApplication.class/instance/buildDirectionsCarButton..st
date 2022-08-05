building
buildDirectionsCarButton: aBuilder

	^ aBuilder pluggableButtonSpec new
			label: 'Car';
			model: self;
			action: #switchToModeCar;
			state: #hasModeCar;
			help: 'Choose car as mode of transportation for route calculation.';
			yourself