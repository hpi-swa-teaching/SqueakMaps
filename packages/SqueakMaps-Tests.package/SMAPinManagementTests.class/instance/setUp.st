running
setUp

	model := SMAApplication new.
	self wantsToTest: model build.
	
	pinManagementButton := self subject findByLabel: 'Pins'.
	savedPinsBefore := SMAApplication savedPins.
	SMAApplication savedPins: nil