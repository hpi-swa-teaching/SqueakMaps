as yet unclassified
testTransportationModeLookup

	| modeCar modeBike modeWalk modeDefault carString bikeString walkString |

	modeCar := #car.
	modeBike := #bike.
	modeWalk := #walk.
	modeDefault := #abcdefghijklmnopqrstuvwxyz.
	carString := 'driving-car'.
	bikeString := 'cycling-regular'.
	walkString := 'foot-walking'.	

	
	self assert: carString equals: (self orsAPI transportationModeLookup: modeCar).
	self assert: bikeString equals: (self orsAPI transportationModeLookup: modeBike).
	self assert: walkString equals: (self orsAPI transportationModeLookup: modeWalk).
	self assert: carString equals: (self orsAPI transportationModeLookup: modeDefault).