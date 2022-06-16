building
buildDirectionsBikeButton: aBuilder

	^ aBuilder pluggableButtonSpec new
			label: 'Bike';
			model: self;
			action: #switchToModeBike;
			help: 'Choose bike as mode of transportation for route calculation.';
			yourself