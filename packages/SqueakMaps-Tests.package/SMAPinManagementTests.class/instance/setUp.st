running
setUp
	model := SMAWindow new.
	self wantsToTest: model build.
	
	pinManagementButton := self subject findByLabel: 'Pins'.
	savedPinsBefore := SMAWindow savedPins.
	SMAWindow savedPins: nil