accessing
savedPins

	^ SavedPins ifNil: [SavedPins := OrderedCollection new]