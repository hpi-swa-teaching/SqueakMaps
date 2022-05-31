building
buildDirectionsInputField: aBuilder withAccessors: aGetter and: aSetter

	^ aBuilder pluggableInputFieldSpec new
			model: self;
			getText: aGetter;
			setText: aSetter;
			editText: aSetter;
			frame: (0@0.5 corner: 1@1);
			yourself.