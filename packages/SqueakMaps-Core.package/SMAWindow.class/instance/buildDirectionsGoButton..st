building
buildDirectionsGoButton: aBuilder

	^ aBuilder pluggableButtonSpec new
			label: 'Go';
			model: self;
			action: #search;
			help: 'Click here search for a Location or get the Route from one Point to another.';
			frame: (0@0.32 corner: 1@0.42)
			yourself.