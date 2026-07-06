running
setUp

	super setUp.
	savedPinsBefore := SMAApplication savedPins copy.
	SMAApplication savedPins: OrderedCollection new.
	application := SMATestApplication new.
	application initializeMap
