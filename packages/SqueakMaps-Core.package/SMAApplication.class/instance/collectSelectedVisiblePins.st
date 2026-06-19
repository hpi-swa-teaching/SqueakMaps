category management
collectSelectedVisiblePins

	| result |
	result := OrderedCollection new.
	1 to: (self items size) do: [:i |
			((self isSelected: i) and: [self isSelectedTypePinAt: i]) ifTrue: [
				"Transcript show: (self class savedPins detect: [:p | p alias = ((self items at: i) copyFrom: (self hierarchicalPinListPrefix size + 1) to: ((self items at: i) size))]) alias."
					result add: (self class savedPins detect: [:p | p alias = ((self items at: i) copyFrom: (self hierarchicalPinListPrefix size + 1) to: ((self items at: i) size))])
				].
		].
	^ result 