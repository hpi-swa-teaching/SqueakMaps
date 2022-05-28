building
buildDirectionsBikeButton: aBuilder

	^ aBuilder pluggableButtonSpec new
			label: 'Bike';
			model: self;
			help: 'Choose bike as mode of transportation for route calculation.';
			frame: (0.3@0 corner: 0.6@1);
			yourself.