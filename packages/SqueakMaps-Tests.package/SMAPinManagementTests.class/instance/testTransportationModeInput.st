as yet unclassified
testTransportationModeInput
	
	| transportModeCar transportModeBike transportModeWalk defaultTransportMode carButton bikeButton walkButton |
	
	transportModeCar := #car.
	transportModeBike := #bike.
	transportModeWalk := #walk.
	defaultTransportMode := transportModeCar.
	
	self model switchToDirectionsView.
	carButton := (self subject findByLabel: 'Car').
	bikeButton := (self subject findByLabel: 'Bike').
	walkButton := (self subject findByLabel: 'Walk').
	
	self assert: defaultTransportMode equals: self model transportationModeInput.
	carButton click.
	self assert: transportModeCar equals: self model transportationModeInput.
	bikeButton click.
	self assert: transportModeBike equals: self model transportationModeInput.
	walkButton click.
	self assert: transportModeWalk equals: self model transportationModeInput.
	carButton click.
	self assert: transportModeCar equals: self model transportationModeInput