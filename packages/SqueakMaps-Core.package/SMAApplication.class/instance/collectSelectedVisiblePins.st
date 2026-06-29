category management
collectSelectedVisiblePins

	| result |
	result := OrderedCollection new.
	1 to: (self items size) do: [:i |
			((self isSelected: i) and: [self isSelectedTypePinAt: i]) ifTrue: [
					result add: (self getSelectedPinFromItemsAt: i).
				].
		].
	^ result 