pin management
isSelectedPinSaved

	^ self class savedPins anySatisfy: [:p | p coordinates = self selectedPin coordinates]