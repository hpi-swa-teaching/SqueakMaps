pin management
selectPinsForCategory: aCategory 
	
	| selectedPins |
	selectedPins := ((self class savedPins select: [:p | p category = aCategory]) collect: [:p | self hierarchicalPinListPrefix, p alias]).
	^ selectedPins
	