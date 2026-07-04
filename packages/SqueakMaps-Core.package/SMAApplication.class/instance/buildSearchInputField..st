building
buildSearchInputField: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #searchInput;
		setText: #searchInput:;
		editText: #searchInput:;
		askBeforeDiscardingEdits: false;
		help: 'Search location...';
		frame: (0 @ 0 corner: 1 @ 0.08);
		yourself