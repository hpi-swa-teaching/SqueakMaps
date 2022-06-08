building
buildDirectionsWalkButton: aBuilder

	^ aBuilder pluggableButtonSpec new
			label: 'Walk';
			model: self;
			help: 'Choose walking as mode of transportation for route calculation.';
			yourself