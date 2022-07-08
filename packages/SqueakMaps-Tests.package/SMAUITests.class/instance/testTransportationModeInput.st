testing
testTransportationModeInput
	
	| 	transportationModeCar 	transportationModeBike 	transportationModeWalk defaultTransportationMode |
	
	transportationModeCar := #car.
	transportationModeBike := #bike.
	transportationModeWalk := #walk.
	defaultTransportationMode := transportationModeCar.
	self switchToDirectionsView.
	
	self assert: defaultTransportationMode equals: self model transportationModeInput.
	self carButton click.
	self assert: transportationModeCar equals: self model transportationModeInput.
	self bikeButton click.
	self assert: transportationModeBike equals: self model transportationModeInput.
	self walkButton click.
	self assert: transportationModeWalk equals: self model transportationModeInput.
	self carButton click.
	self assert: transportationModeCar equals: self model transportationModeInput
	
	