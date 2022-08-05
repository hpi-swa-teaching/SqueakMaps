building
buildDirectionsCancelButton: aBuilder

	^ aBuilder pluggableButtonSpec new
			label: 'X';
			model: self;
			action: #switchToEmptySearchView;
			padding: 10;
			horizontalResizing: #shrinkWrap;
			help: 'Click to leave the Route Calculation View.';
			yourself