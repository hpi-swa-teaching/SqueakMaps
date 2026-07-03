pin management
selectPinsForCategory: aCategory 
	
	| selectedPins |
	selectedPins := self class savedPins select: [:p | p category = aCategory].
	
	"Concatenate offset"
	^ selectedPins collect: [:p | self hierarchicalPinListPrefix, p alias]
	