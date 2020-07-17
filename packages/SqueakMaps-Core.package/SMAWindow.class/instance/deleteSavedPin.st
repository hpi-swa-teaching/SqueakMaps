select api
deleteSavedPin

	| index |
	index := self requestPinSelectionFrom: SMAWindow savedPins.
	(index > 0)
		ifTrue: [	SMAWindow savedPins removeAt: index]
