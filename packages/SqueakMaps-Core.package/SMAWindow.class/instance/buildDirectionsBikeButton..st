building
buildDirectionsBikeButton: aBuilder

	^ aBuilder pluggableButtonSpec new
			label: 'Bike';
			model: self;
			help: 'Choose bike as mode of transportation for route calculation.';
			yourself