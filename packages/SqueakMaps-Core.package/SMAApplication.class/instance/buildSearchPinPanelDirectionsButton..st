building
buildSearchPinPanelDirectionsButton: aBuilder

	^ aBuilder pluggableButtonSpec new
			label: 'Directions';
			model: self;
			padding: 10;
			action: #switchToDirectionsView;
			help: 'Click on this button to switch to directions view.';
			yourself
			