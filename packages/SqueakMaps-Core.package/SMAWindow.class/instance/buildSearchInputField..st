building
buildSearchInputField: aBuilder

	^ aBuilder pluggableInputFieldSpec new
			model: self;
			getText: #searchInput;
			setText: #submitSearchInput:;
			help: 'Search location...';
			frame: (LayoutFrame new
				leftFraction: 0 offset: 0;
				topFraction: 0 offset: 0;
				rightFraction: 1 offset: 0;
				bottomFraction: 0.08 offset: 0;
				yourself);
			yourself