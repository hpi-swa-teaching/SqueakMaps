building
buildDirectionsGoButton: aBuilder

	^ aBuilder pluggableButtonSpec new
			label: 'Go';
			model: self;
			action: #searchMultipleLocations;
			help: 'Click here to search for a location or get the route from one point to another.';
			frame: (0 @ 0.32 corner: 1 @ 0.42)
			yourself