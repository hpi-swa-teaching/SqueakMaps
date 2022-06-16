building
buildSearchPinPanelDirectionsButton: aBuilder

	^ aBuilder pluggableButtonSpec new
			label: 'Directions';
			model: self;
			padding: 10;
			action: #switchToDirectionsView;
			horizontalResizing: #shrinkWrap;
			help: 'Click on this button to switch to directions view.';
			frame: (0@0.5 corner: 1@1);
			yourself.
			