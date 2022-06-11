building
buildSearchGoToDirectionsButton: aBuilder

	^ aBuilder pluggableButtonSpec new
			label: 'Directions';
			model: self;
			action: #switchToDirectionsView;
			padding: 10;
			horizontalResizing: #shrinkWrap;
			help: 'Click to switch to directions view.';
			frame: (0@1 corner: 1@2);
			yourself.