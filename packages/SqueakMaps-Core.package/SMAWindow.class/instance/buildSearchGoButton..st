building
buildSearchGoButton: aBuilder

	^ aBuilder pluggableButtonSpec new
			label: 'Search';
			model: self;
			action: #searchLocation;
			padding: 10;
			horizontalResizing: #shrinkWrap;
			help: 'Click to start a search.';
			frame: (0.7@0.0 corner: 1@1);
			yourself.