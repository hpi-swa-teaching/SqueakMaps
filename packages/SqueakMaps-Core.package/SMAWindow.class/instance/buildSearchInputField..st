building
buildSearchInputField: aBuilder

	^ aBuilder pluggableInputFieldSpec new
			model: self;
			getText: #searchInput;
			setText: #searchInput:;
			editText: #searchInput:;
			frame: (0@0 corner: 0.7@1);
			yourself.