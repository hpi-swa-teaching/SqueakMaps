toolbuilder
buildSearchWith: builder

	^ builder pluggableInputFieldSpec new
		model: self;
		plainTextOnly: true;
		getText: #searchTerm;
		setText: #searchTerm:;
		help: 'Search...';
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame
			fractions: (0@0 corner: 1@0)
			offsets: (0@0 corner: 0@ builder inputFieldHeight));
		yourself