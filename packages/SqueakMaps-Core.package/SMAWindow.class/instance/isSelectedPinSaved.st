pin management
isSelectedPinSaved

	^ SMAWindow savedPins anySatisfy: [:p | p coordinates = self selectedPin coordinates].