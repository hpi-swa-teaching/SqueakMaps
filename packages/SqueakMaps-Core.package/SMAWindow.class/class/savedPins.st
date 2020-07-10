accessing
savedPins
	^ SavedPins ifNil: [SavedPins :=Dictionary new]