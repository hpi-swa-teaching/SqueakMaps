building
buildFilterButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Filter Pins';
		model: self;
		action: #filterPins;
		help: 'Filter displayed pins by category.';
		frame: (0 @ -0.5 corner: 1 @ 0);
		yourself