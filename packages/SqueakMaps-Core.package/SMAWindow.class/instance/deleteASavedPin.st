select api
deleteASavedPin

	| index |
	index := self requestPinSelectionFrom: self class savedPins.
	(index > 0)
		ifTrue: [	self class savedPins removeAt: index]
