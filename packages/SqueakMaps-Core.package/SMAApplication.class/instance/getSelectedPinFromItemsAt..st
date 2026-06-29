category management
getSelectedPinFromItemsAt: anIndex

	| selectedName selectedItem |
	selectedName := ((self items at: anIndex) copyFrom: (self hierarchicalPinListPrefix size + 1) to:
			 ((self items at: anIndex) size)).
			selectedItem := self class savedPins detect: [:p | p alias = selectedName].
	^ selectedItem