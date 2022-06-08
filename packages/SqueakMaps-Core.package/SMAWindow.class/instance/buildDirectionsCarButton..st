building
buildDirectionsCarButton: aBuilder

	^ aBuilder pluggableButtonSpec new
			label: 'Car';
			model: self;
			action: #switchToModeCar;
			help: 'Choose car as mode of transportation for route calculation.';
			yourself