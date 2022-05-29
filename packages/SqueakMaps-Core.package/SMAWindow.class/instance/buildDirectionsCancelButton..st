building
buildDirectionsCancelButton: aBuilder

	^ aBuilder pluggableButtonSpec new
			label: ' X ';
			model: self;
			horizontalResizing: #shrinkWrap;
			help: 'Click to leave the Route Calculation View.';
			yourself.