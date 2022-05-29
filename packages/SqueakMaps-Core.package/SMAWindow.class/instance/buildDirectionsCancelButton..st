building
buildDirectionsCancelButton: aBuilder

	^ aBuilder pluggableButtonSpec new
			label: 'X';
			model: self;
			action: #switchToSearchView;
			padding: 15;
			horizontalResizing: #shrinkWrap;
			help: 'Click to leave the Route Calculation View.';
			yourself.