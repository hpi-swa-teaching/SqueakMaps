running
setUp
	
	model := SMAApplication new.
	self wantsToTest: model build.
	
	pinManagementButton := self subject findByLabel: 'Pins'.
	
	savedPinsBefore := SMAApplication savedPins.
	savedCategories := SMAApplication savedCategories.
	
	SMAApplication savedPins: nil.
	SMAApplication savedCategories: (OrderedCollection with: SMAPinCategory defaultCategory).