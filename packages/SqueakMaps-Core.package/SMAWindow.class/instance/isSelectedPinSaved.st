pin management
isSelectedPinSaved

	^ SMAWindow savedPins anySatisfy: [:p | p latLong = self selectedPin latLong].