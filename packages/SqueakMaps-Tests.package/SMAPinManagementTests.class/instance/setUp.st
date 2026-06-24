running
setUp
	
	model := SMAApplication new.
	self wantsToTest: model build.
	
	savedPinsBefore := SMAApplication savedPins.
	savedCategories := SMAApplication savedCategories.
	
	SMAApplication savedPins: OrderedCollection new.
	SMAApplication savedCategories: (OrderedCollection with: SMAPinCategory defaultCategory).