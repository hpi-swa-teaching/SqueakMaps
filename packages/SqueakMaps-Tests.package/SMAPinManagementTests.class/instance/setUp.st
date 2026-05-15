running
setUp
	
	model := SMAApplication new.
	self wantsToTest: model build.
	
	pinManagementButton := self subject findByLabel: 'Pins'.
	savedPinsBefore := SMAApplication savedPins.
	savedCategories := SMAApplication savedCategories.
	self model class savedCategories: OrderedCollection new.
	self model class savedCategories:
		(OrderedCollection with: SMAPinCategory defaultCategory).
	SMAApplication savedPins: nil