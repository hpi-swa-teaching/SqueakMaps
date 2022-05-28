building
buildDirectionsCancelButton: aBuilder

	^ aBuilder pluggableButtonSpec new
			label: ' X ';
			model: self;
			help: 'Click to leave the Route Calculation View.';
			frame: (0.75@0 corner: 1@0.1)
			yourself.