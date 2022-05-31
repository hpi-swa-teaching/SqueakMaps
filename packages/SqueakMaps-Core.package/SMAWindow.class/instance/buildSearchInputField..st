building
buildSearchInputField: aBuilder

	^ aBuilder pluggableInputFieldSpec new
			model: self;
			getText: #searchInput;
			setText: #searchInput:;
			editText: #searchInput:;
			yourself.